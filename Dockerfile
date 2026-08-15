# 1. Используем официальный актуальный образ
FROM anaconda/miniconda:latest

# Принимаем условия использования Miniconda
# Это необходимо для бесперебойной работы, особенно при установке через conda
ENV CONDA_PLUGINS_AUTO_ACCEPT_TOS=true

# 2. Создаем и делаем рабочей папку /app
WORKDIR /app

# 3. Копируем файл 1.sh в контейнер
COPY 1.sh /app/1.sh

# 4. Выдаем права на исполнение
RUN chmod +x /app/1.sh

# 5. Устанавливаем необходимые пакеты Python через pip
# (pip в этом образе предустановлен)
RUN pip install mlflow boto3 pymysql

# 6. Запускаем скрипт при старте контейнера
CMD ["/app/1.sh"]