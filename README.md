# docker-rabbitmq-project

Инструкция по запуску проекта:

1. На ПК должен быть установлен Docker
2. Залогиниться в Docker
3. Файлы docker-compose.yml и init.sql должны находиться в одном каталоге на ПК, где будет осуществлен запуск проекта.
4. Через терминал, зайти в каталог с этими файлами
5. Выполнить команду: docker compose up

Доступные сервисы:
- Producer: http://localhost:5000
  
- Consumer: http://localhost:5001
  
- RabbitMQ Management: http://localhost:15672
  login: project
  password: 12345
  
- pgAdmin: http://localhost:5050

    URL: http://localhost:5050

    Email: admin@admin.com

    Пароль: admin

Данные для подключения к PostgreSQL:

    Host: postgres (внутри Docker сети) или localhost (снаружи)

    Port: 5432 (внутри) или 5433 (снаружи)

    Database: transactions_db

    Username: project

    Password: 12345

После входа в pgAdmin нужно добавить сервер:

    Нажмите "Add New Server"

    Во вкладке "General":

        Name: PostgreSQL Docker

    Во вкладке "Connection":

        Host name/address: postgres

        Port: 5432

        Maintenance database: transactions_db

        Username: project

        Password: 12345

