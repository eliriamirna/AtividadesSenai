
/*
Crie um programa que apresenta um cardápio ao cliente
de pizzas diversas, com entrada de dados.
*/

//Funções
function saudacao() {
  var hour = new Date().getHours(); 
  var saudar;
  if (hour <= 12) {
    saudar = "Bom dia!";
  } else if (hour <= 18) {
    saudar = "Boa tarde!";
  } else { 
    saudar = "Boa noite!";
  }
  window.prompt(saudar);
}
saudacao()

function massa() {
   var tipo = ["Tradicional", "Borda com catupiry", "Borda com cheddar"];
   var txt = "Vamos então montar sua pizza! Esolha a massa:";
   for (var i = 0; i < tipo.length; i++) {
   txt += "\n" + (i+1) + " " + tipo[i];
   }
var escolhaMassa = window.prompt(txt);
   return tipo[parseFloat(escolhaMassa)-1];
}

function tamanho() {
   var tipo = ["Pequena", "Média", "Grande"];
   var txt = "Escolha o tamanho:";
   for (var i = 0; i < tipo.length; i++) {
   txt += "\n" + (i+1) + " " + tipo[i];
   }
var escolhaTamanho = window.prompt(txt);
return tipo[parseFloat(escolhaTamanho)-1]; 
}

function inteira() {
   var tipo = ["Mussarela", "Frango com catupiry", "Vegetariana", "4 queijos", "Marguerita"];
   var txt = "Escolha o sabor da sua pizza";
   for (var i = 0; i < tipo.length; i++) {
   txt += "\n" + (i+1) + " " + tipo[i];
}
var escolhaSaborInt = window.prompt(txt);
return tipo[parseFloat(escolhaSaborInt)-1]; 
}

function meioAmeio1() {
   var tipo = ["Mussarela", "Frango com catupiry", "Vegetariana", "4 queijos", "Marguerita"];
   var txt = "Escolha o sabor da sua pizza";
   for (var i = 0; i < tipo.length; i++) {
   txt += "\n" + (i+1) + " " + tipo[i];
}
var escolhaSaborMam1 = window.prompt(txt);
return tipo[parseFloat(escolhaSaborMam1)-1]; 
}

function meioAmeio2() {
   var tipo = ["Mussarela", "Frango com catupiry", "Vegetariana", "4 queijos", "Marguerita"];
   var txt = "Escolha o sabor da sua pizza";
   for (var i = 0; i < tipo.length; i++) {
   txt += "\n" + (i+1) + " " + tipo[i];
}
var escolhaSaborMam2 = window.prompt(txt);
return tipo[parseFloat(escolhaSaborMam2)-1]; 
}

function qtdSabores() {
   var tipo = ["Inteira", "Dois sabores"];
   var txt = "Gostaria de uma pizza inteira ou de 2 sabores?";
   for (var i = 0; i < tipo.length; i++) {
   txt += "\n" + (i+1) + " " + tipo[i];
   }
var escolhaQtdSabores = window.prompt(txt);
var pizza;
if (escolhaQtdSabores == "1") {
pizza = inteira();

} else {
pizza = meioAmeio1() + " e " + meioAmeio2();
 
}
return tipo[parseFloat(escolhaQtdSabores)-1] + " " + pizza;
}

//escolha da pizza
var pedido = window.prompt("Selecione o atendimento desejado:\n1. Pedir uma pizza\n2. Acompanhar meu pedido\n3. Cancelar atendimento");

switch(pedido) {
   case "1":
   var decisao = "não";
   while (decisao == "não") {
   var massaPizza = massa();
   var tamanhoPizza = tamanho();
   var qtdSaboresPizza = qtdSabores();
   decisao = window.prompt("A pizza pedida foi: " + massaPizza + " " + tamanhoPizza + " " +  qtdSaboresPizza + "?");
   }
if (decisao == "sim") {
   alert("Ótima escolha, você será direcionado(a) para a página de pagamento. Obrigado!")
   }
break;
case "2":
   alert("Você será direcionado(a) para o acompanhamento do seu pedido")
break;
default:
   alert("Seu atendimento de pedido de pizza foi cancelado.");
}
undefined
