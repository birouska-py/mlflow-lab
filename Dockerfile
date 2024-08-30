FROM ghcr.io/mlflow/mlflow:v2.15.1

# Instala o psycopg2 para integração com PostgreSQL
RUN pip install psycopg2-binary
