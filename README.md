# Atividade Final Módulo Banco de Dados da Growdev

## Descrição

Modelar e criar um banco de dados para armazenar usuários e tarefas com seus respectivos atributos contendo relação entre as tabelas. Cada usuário pode conter N tarefas associadas a ele e cada tarefa é associada a somente um usuário.

## Requisitos

- SGBD Postgres
- Linguagem SQL
- Criação de tabelas
- Criação de relacionamentos entre tabelas
- Criação de chaves primárias e estrangeiras
- Consultas
- Inserção de dados
- Atualização de dados
- Remoção de dados

## Arquivos

```shell
λ tree
.
├── deletes.sql
├── inserts
│   ├── create_table_tasks.sql
│   ├── create_table_users.sql
│   ├── insert_task.sql
│   └── insert_users.sql
├── selects.sql
├── set_base_config.sql
└── update.sql
```

## Instruções

1. Crie um banco de dados
2. Execute o arquivo `set_base_config.sql` para instalar extensão e criar uma função
3. Execute o arquivo `inserts/create_table_users.sql` para criar a tabela de usuários
4. Execute o arquivo `inserts/create_table_tasks.sql` para criar a tabela de tarefas
5. Execute o arquivo `inserts/insert_users.sql` para inserir dados na tabela de usuários
6. Execute o arquivo `inserts/insert_task.sql` para inserir dados na tabela de tarefas

## Consultas

- Modelo de consultas no arquivo `selects.sql`
- Modelo de atualizações no arquivo `updates.sql`
- Modelo de remoções no arquivo `deletes.sql`

---

## Referências

Trigger and Function para atualização da coluna update_at quando a linha sofrer alteração.

- https://gist.github.com/logrusorgru/82b002b8807253b2adef

---

Feito por [Diener](https://github.com/dienerld)
