/*
Crie um chat para um cliente que quer comprar um carro com
entrada de dados.
*/

//Funcções
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

function compraTipo() {
  var tipo = ["Jeep Renegade", "Jeep Compass", "Toyota      Compass", "Toyota Corolla"];
  var txt = "Qual marca e modelo do carro?";
  for (var i = 0; i < tipo.length; i++) {
  txt += "\n" + (i+1) + " " + tipo[i];
  }
var escolha = window.prompt(txt);
  return tipo[parseFloat(escolha)-1];
}

function compraCor() {
 var cor = ["Preto", "Branco", "Prata", "Vermelho"];
 var txt = "Qual cor desejada?";
  for (var i = 0; i < cor.length; i++) {
  txt += "\n" + (i+1) + " " + cor[i];
  }
var escolha = window.prompt(txt);
  return cor[parseFloat(escolha)-1];
}

//início chat
var opcao = window.prompt("Como posso ajudá-lo?\n1. Comprar\n2. Cancelar\n3. Falar com atendente");

switch(opcao) {
  case "1":
    var decisao = "não"
    while(decisao == "não") {
    var tipoEscolhido = compraTipo(); 
    var corEscolhido = compraCor();
    decisao = window.prompt("O carro escolhido foi: "+ tipoEscolhido + " " + corEscolhido + " " + "?");
    }
if (decisao == "sim") {
alert("Ótima escolha, você será direcionado para a página de pagamento. Obrigado!")
} 
    break;
  case "2":
     alert("O seu processo de compra foi cancelado.")
    break;
  default:
    alert("Você será direcionado para um de nossos atendentes.")
}
