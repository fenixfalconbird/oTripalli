function menuMobile() {
// Menu hamburguer para mobile
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}
		
// $(document).ready(function(){
// 	$("#formCadastro").validate({
// 		rules:{
// 			nome: {
// 				required: true,
// 				maxlength: 100,
// 				minlength: 10,
// 				minWords: 2
// 			},
// 			email: {
// 				required: true,
// 				email: true
// 			},
// 			cidade: {
// 				required: true
// 			},
// 			idade: {
// 				required: true,
// 				min: 1,
// 				max: 120
// 			},
// 			instagram: {
// 				arrobaNoInicio: true
// 			}
// 		},
// 		submitHandler: function(form){
// 			alert("Sucessoooooooooo")						
// 		}
// 	})
// })