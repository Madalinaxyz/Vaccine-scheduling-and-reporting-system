services:
  postgres:
    image: 'postgres:16'
    container_name: 'postgres'
    ports:
      - '5432:5432'
    environment:
      POSTGRES_DB: bookdb
      POSTGRES_PASSWORD: postgres
      POSTGRES_USER: postgres
    healthcheck:
      test: 'pg_isready -U postgres'
