/*
Faça um programa que recebe um usuário e senha
e valida a senha e o usuário com entrada de dados.
*/

var login = window.prompt("Digite o seu login:" + " ");
var senha = parseFloat(window.prompt("Digite sua senha" + " "));

function acesso() {
   if (login == "Eliria" && senha == "121416") {
   alert("Acesso permitido. Bem Vindo!")
   } else { alert("Acesso negado. Usuário e senha não conferem.")
   }
}
acesso()
