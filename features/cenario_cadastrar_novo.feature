#language: pt
#utf-8

Funcionalidade: Logar no site admin http://opensource.demo.orangehrmlive.com/index.php/recruitment/addCandidate

Eu como analista RH
Quero acessar o site da empresa
Para cadastrar novo colaborador


Cenário: Cadastrar empregado
Dado que loguei com usuario e senha no site 
Quando digitar usuario e senha na tela de login
Então cadastraremos o colaborador

