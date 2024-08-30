# Laboratório de MLflow com Docker

Este projeto configura um ambiente completo de MLflow usando Docker. A configuração inclui o MLflow Tracking Server, PostgreSQL para armazenamento de metadados e MinIO para armazenamento de artefatos.

## Visão Geral

Esta configuração Docker fornece os seguintes serviços:

- **MLflow Tracking Server**: Para rastreamento de experimentos, gerenciamento de projetos, modelos e registro de modelos.
- **PostgreSQL**: Banco de dados para armazenar metadados e detalhes dos experimentos.
- **MinIO**: Armazenamento de objetos para salvar todos os artefatos, como modelos e arquivos de saída.

## Pré-requisitos

- **Docker**: Certifique-se de que o Docker está instalado no seu sistema. Você pode baixá-lo no [site oficial do Docker](https://www.docker.com/get-started).
- **Docker Compose**: Este projeto usa o Docker Compose para orquestração. Geralmente, ele vem incluído com o Docker Desktop, mas você pode instalá-lo separadamente, se necessário.

## Começando

Siga estes passos para configurar e executar o laboratório de MLflow.

### 1. Clone o Repositório

Clone este repositório para a sua máquina local:

```bash
git clone https://github.com/birouska-py/mlflow-lab.git
cd mlflow-lab
```

### 2. Construir e Iniciar os Serviços

Construa as imagens Docker e inicie os serviços:

```bash
docker-compose up -d --build
```

Este comando irá:

- Construir a imagem personalizada do MLflow com integração ao PostgreSQL.
- Iniciar os serviços MLflow Tracking Server, PostgreSQL e MinIO.

### 3. Acessar os Serviços

Uma vez que os contêineres estejam em execução, você pode acessar os serviços através das seguintes URLs:

- **MLflow Tracking Server**: [http://localhost:5000](http://localhost:5000)
- **Interface Web do MinIO**: [http://localhost:9001](http://localhost:9001)
  - **Credenciais do MinIO**: 
    - **Usuário**: `admin`
    - **Senha**: `minioadmin`
- **Banco de Dados PostgreSQL**: 
  - **Host**: `localhost`
  - **Porta**: `5432`
  - **Usuário**: `postgres`
  - **Senha**: `postgres`
  - **Banco de Dados**: `mlflowdb`

### 4. Gerenciar os Serviços

Para parar os serviços, execute:

```bash
docker-compose down
```

Para visualizar os logs de um serviço específico, use:

```bash
docker-compose logs <nome-do-servico>
```

Por exemplo, para visualizar os logs do serviço MLflow:

```bash
docker-compose logs mlflow-lab
```

### Solução de Problemas

Se você encontrar algum problema:

- Certifique-se de que o Docker e o Docker Compose estão instalados e em execução corretamente.
- Verifique erros nos logs usando `docker-compose logs`.
- Verifique se nenhum outro processo está utilizando as portas 5000, 5432, 9000 ou 9001.

### Conclusão

Agora você tem um ambiente de MLflow totalmente operacional configurado com Docker. Esta configuração está pronta para uso com experimentos, modelos e armazenamento de artefatos, proporcionando uma estrutura robusta para seus projetos de machine learning.

Para mais informações sobre o MLflow, consulte a [documentação do MLflow](https://mlflow.org/docs/latest/index.html).
