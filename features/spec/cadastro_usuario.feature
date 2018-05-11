# language: pt
# enconding: utf-8

Funcionalidade: Cadastro de novo usuário

@cadastro
Cenário: Cadastrar novo usuário com dados válidos
Dado que estou no site DemoQA
Quando preencher as informações de cadastro válidas
E clicar em confirmar
Então devo visualizar mensagem de sucesso

@cadastro
Cenário: Cadastrar novo usuário com dados já existentes
Dado que estou no site DemoQA
Quando preencher as informações de cadastro com dados já existentes
E clicar em confirmar
Então devo visualizar mensagem de erro