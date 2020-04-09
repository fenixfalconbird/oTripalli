function carregarMais() {
  document.getElementById('conteudo').innerHTML="Não há mais sugestões para você !!!";
}

// $(document).ready(function(){
//   $("#aa").click(function(){
//     $("#escondida").hide();
//   });
// });
src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" 

$(document).ready(function(){
  $("#aa").click(function(){
    $("#escondida").hide();
  });
});

function Mudarestado(el) {
  var display = document.getElementById(el).style.display;
  if(display == "none")
      document.getElementById(el).style.display = 'block';
  else
      document.getElementById(el).style.display = 'none';
}
