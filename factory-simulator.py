import mysql.connector
from faker import Faker
import random
from datetime import datetime

# Conexão com o banco de dados
db = mysql.connector.connect(
    host="localhost",
    user="tiago",
    password="senha",  # insira sua senha aqui
    database="sa"  # insira o nome do seu banco de dados aqui
)

cursor = db.cursor()

# Instanciar o Faker
faker = Faker()

# Função para obter IDs de sensores existentes
def obter_sensores():
    cursor.execute("SELECT id_sensor, tipo FROM sensor")
    return cursor.fetchall()

# Função para gerar dados na tabela `monitoramento`
def gerar_monitoramentos(n):
    sensores = obter_sensores()
    for _ in range(n):
        id_sensor, tipo = random.choice(sensores)
        timestamp = datetime.now()  # Usando a data e hora atual do computador
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
            # Se o tipo do sensor não for reconhecido, continue para o próximo
            continue
        cursor.execute(
            "INSERT INTO monitoramento (id_sensor, timestamp, valor) VALUES (%s, %s, %s)",
            (id_sensor, timestamp, valor)
        )
    db.commit()

# Função para gerar dados na tabela `alerta`
def gerar_alertas(n):
    sensores = obter_sensores()
    for _ in range(n):
        id_sensor, tipo = random.choice(sensores)
        hora_alerta = datetime.now()  # Usando a data e hora atual do computador
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
            # Se o tipo do sensor não for reconhecido, continue para o próximo
            continue
        status = random.choice(['Pendente', 'Resolvido'])
        cursor.execute(
            "INSERT INTO alerta (id_sensor, hora_alerta, descricao, status) VALUES (%s, %s, %s, %s)",
            (id_sensor, hora_alerta, descricao, status)
        )
    db.commit()

# Gerar dados fictícios
gerar_monitoramentos(100)
gerar_alertas(20)

# Fechar a conexão com o banco de dados
cursor.close()
db.close()
