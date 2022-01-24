# PHP-Cli Test - Desafio

### Candidate Test

O candidato deverá implementar um pequena aplicação CLI, que atenda às especificações dos casos de uso mencionados a seguir, utilizando
somente a linguagem de programação PHP.

### Restrictions

|Code     |Descrição                                   |
|---------|-----------------------------------------------|
|CRT-001 | Não é permitida a utilização de frameworks como Laravel, Symfony, Yii, Slim, etc.|
|CRT-002 | Não será permitida a utilização de ORMs.|
|CRT-003 | Para manipulação e transporte de dados, será permitida a utilização de PDO.|
|CRT-004 | Para criação de uma aplicação Command Line, o candidato DEVERÁ utilizar o symfony/console (link)|
|CRT-005 | Para este teste, deverá ser utilizado o namespace ASPTest , que deve apontar para o diretório src/ do projeto.|
|CRT-006 | Para todos os casos de uso, testes devem ser implementados. O plano de testes deverá ser criado pelo próprio candidato.|
|CRT-007 | Para implementação dos testes, será permitida a utilização do framework PHPUnit.|
|CRT-008 | Deve existir, na raiz do projeto, um arquivo readme.md, que contenha detalhes relevantes do projeto, como, por exemplo, instruções de como executá-lo. A estruturação e formatação deste documento, fica à critério do candidato.|
|CRT-009 | A infraestrutura necessária para este teste deverá ser provisionada via docker, estruturada dockercompose, à critério do candidato, desde que, caso opte por sua utilização, uma tabela de requirement seja adicionada ao readme.MD do projeto.|

### Use Cases

**UC-001** 

Implementar um serviço chamado `./ASP-TEST USER:CREATE` , que permita a criação um novo usuário, que atenda às seguintes especificações:
* O comando deve receber os argumentos primeiro nome, o último nome, o email do usuário e idade;
  * O primeiro argumento do comando deve ser o Primeiro Nome;
  * O segundo argumento do comando deve ser o Sobrenome;
  * O terceiro argumento do comando deve ser o email;
  * O quarto argumento do comando deve ser a idade.
* Todos os atributos são obrigatórios, exceto a idade;
* Os atributos primeiro nome e último nome devem possuir no mínimo 2 caracteres e no máximo 35 caracteres;
* Só devem ser permitidos e-mails validos, à nível de estrutura, tendo a estrutura esperada como: [alias]@[domain].[tp|er], onde:
  * [alias] corresponde ao alias do usuário;
  * [domain] corresponda ao domínio a qual o e-mail pertence; e
  * [tp|er] corresponde ao tipo ou à entidade reguladora do domínio, sufixado de um complemento ou não.
* A idade deverá ser sempre positiva, não deve aceitar mais de quatro dígitos e não deve ser superior à 150;
* Quando não informado, o atributo idade deve ser nulo.
* Em caso de erro, um erro deverá ser apresentado à CLI, descrevendo o problema;
* Em caso de sucesso, os dados do usuário recém criado deverá ser apresentado na tela, no formato json.

**UC-002**

Implementar um serviço chamado `./ASP-TEST USER:CREATE-PWD {ID}` , que permita a definição de uma password para um usuário já existente e atenda às seguintes especificações:
* Que permita passar o ID do usuário, a nova password e a confirmação da nova password;
* Que tenha todos os seus argumentos como obrigatórios;
* Que dispare exceptions nas seguintes condições:
  * Se o usuário não existir;
  * Se a validação da nova password falhar;
* A validação da password deverá checar:
  * Se possui no mínimo 6 caracteres;
  * Se possui pelo menos:
    * 1 caractere especial;
    * 1 número;
    * 1 letra maiúscula;
* Se a validação ocorrer com sucesso, a nova password deve ser armazenada com criptografia BCRYPT.
* Para a criptografia BCRYPT, o salt deverá ser gerado, utilizando mcrypt, com um custo de 10.

### Estimativa

O Teste tem o prazo de 2 dias, a contar do dia em que é recebido.