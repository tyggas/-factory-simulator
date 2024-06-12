from flask import Flask, render_template
from flask_socketio import SocketIO
import mysql.connector
from faker import Faker
import random
from datetime import datetime
import threading
import time

app = Flask(__name__)
app.config['SECRET_KEY'] = 'secret!'
socketio = SocketIO(app)

db = mysql.connector.connect(
    host="localhost",
    user="tiago",
    password="senha",  # insira sua senha aqui
    database="sa"  # insira o nome do seu banco de dados aqui
)
cursor = db.cursor()

faker = Faker()

def obter_sensores():
    cursor.execute("SELECT id_sensor, tipo FROM sensor")
    return cursor.fetchall()

def gerar_monitoramentos():
    sensores = obter_sensores()
    while True:
        id_sensor, tipo = random.choice(sensores)
        timestamp = datetime.now()
        if tipo == "Temperatura":
            valor = round(random.uniform(15, 35), 2)
        elif tipo == "Umidade":
            valor = round(random.uniform(30, 70), 2)
        elif tipo == "Pressão":
            valor = round(random.uniform(1000, 2000), 2)
        elif tipo == "Vibração":
            valor = round(random.uniform(0, 10), 2)
        elif tipo == "pH":
            valor = round(random.uniform(0, 14), 2)
        elif tipo == "Precisão de Corte":
            valor = round(random.uniform(0, 1), 2)
        else:
            continue

        
        socketio.emit('nova_leitura', {'id_sensor': id_sensor, 'timestamp': timestamp.strftime('%Y-%m-%d %H:%M:%S'), 'valor': valor})

        if random.random() < 0.1:
            if tipo == "Temperatura":
                descricao = "Temperatura acima do limite"
            elif tipo == "Umidade":
                descricao = "Umidade fora do intervalo"
            elif tipo == "Pressão":
                descricao = "Pressão acima do limite"
            elif tipo == "Vibração":
                descricao = "Vibração excessiva"
            elif tipo == "pH":
                descricao = "pH fora do intervalo"
            elif tipo == "Precisão de Corte":
                descricao = "Precisão de corte fora do padrão"
            else:
                continue

            status = random.choice(['Pendente', 'Resolvido'])
            cursor.execute(
                "INSERT INTO alerta (id_sensor, hora_alerta, descricao, status) VALUES (%s, %s, %s, %s)",
                (id_sensor, timestamp, descricao, status)
            )
            db.commit()
            socketio.emit('novo_alerta', {'id_sensor': id_sensor, 'hora_alerta': timestamp.strftime('%Y-%m-%d %H:%M:%S'), 'descricao': descricao, 'status': status})

        time.sleep(1)

@app.route('/')
def index():
    return render_template('index.html')

if __name__ == '__main__':
    threading.Thread(target=gerar_monitoramentos).start()
    socketio.run(app, host='0.0.0.0', port=5000)
