# 1. Используем образ continuumio/miniconda3:latest
FROM continuumio/miniconda3:latest

# 2. Создаем и делаем рабочей папку /app
WORKDIR /app

# 3. Копируем файл 1.sh внутрь контейнера
COPY 1.sh /app/1.sh

# 4. Выдаем права на исполнение файлу 1.sh
RUN chmod +x /app/1.sh

# 5. Устанавливаем пакеты python: mlflow boto3 pymysql
RUN pip install mlflow boto3 pymysql

# 6. Запускаем на вывод файл 1.sh
CMD ["/app/1.sh"]