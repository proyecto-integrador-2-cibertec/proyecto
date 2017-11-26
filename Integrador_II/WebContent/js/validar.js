 
    //Creamos dos variables que tendrán las expresiones regulares a ser comprobadas
//Una para el correo y otra para verrficar solo letras
/*
var expr = /^[a-zA-Z0-9_\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$/;
var expr1 = /^[a-zA-Z]*$/;
 
$(document).ready(function () {
    $("#boton").click(function (){ //función para el boton de enviar
        //recolectamos en variables, lo que tenga cada input.
        //Para mejor manipulación en los if's
        var nombre = $("#nombre").val();
        var apellidos = $("#apellidos").val();
        var correo = $("#correo").val();
        var passw = $("#pass").val();
        var repass = $("#repass").val();
 
        //Secuencia de if's para verificar contenido de los inputs
 
        //Verifica que no este vacío y que sean letras
        if(nombre == "" || !expr1.test(nombre)){
            $("#mensaje1").fadeIn("slow"); //Muestra mensaje de error
            return false;                  // con false sale de la secuencia
        }
        else{
            $("#mensaje1").fadeOut();   //Si el anterior if cumple, se oculta el error
 
            if(apellidos == "" || !expr1.test(apellidos)){
                $("#mensaje2").fadeIn("slow");
                return false;
            }
            else{
                $("#mensaje2").fadeOut();
 
                if(correo == "" || !expr.test(correo)){
                    $("#mensaje3").fadeIn("slow");
                    return false;
                }
                else{
                    $("#mensaje3").fadeOut();
 
                    if(passw != repass){
                        $("#mensaje4").fadeIn("slow");
                        return false;
                    }
                }
            }
        }
 
    });//fin click
 
    /*Las siguientes funciones son una mejora al ejemplo anterior que mostré
     * Si el mensaje se mostró, el usuario tenía que volver a oprimir el boton
     * de registrar para que el error se ocultará (si era el caso).
     *
     *Con estas funciones de keyup, el mensaje de error se muestra y
     * se ocultará automáticamente, si el usuario escribe datos admitidos.
     * Sin necesidad de oprimir de nuevo el boton de registrar.
     *
     * La función keyup lee lo último que se ha escrito y comparamos
     * con nuestras condiciones, si cumple se quita el error.
     *
     * Es cuestión de analizar un poco para entenderlas
     * Cualquier duda, comenten
     * 
    $("#nombre, #apellidos").keyup(function(){
        if( $(this).val() != "" && expr1.test($(this).val())){
            $("#mensaje1, #mensaje2").fadeOut();
            return false;
        }
    });
 
    $("#correo").keyup(function(){
        if( $(this).val() != "" && expr.test($(this).val())){
            $("#mensaje3").fadeOut();
            return false;
        }
    });
 
    var valido=false;
    $("#repass").keyup(function(e) {
        var pass = $("#pass").val();
        var re_pass=$("#repass").val();
 
        if(pass != re_pass)
        {
            $("#repass").css({"background":"#F22" }); //El input se pone rojo
            valido=true;
        }
        else if(pass == re_pass)
        {
            $("#repass").css({"background":"#8F8"}); //El input se ponen verde
            $("#mensaje4").fadeOut();
            valido=true;
        }
    });fin keyup repass
 
})*///**/

   function soloNumeros(e)
{
    // capturamos la tecla pulsada
    var teclaPulsada=window.event ? window.event.keyCode:e.which;
    // capturamos el contenido del input
    var valor=document.getElementById("id_dni").value;

    if(valor.length<10)
    {
        // 13 = tecla enter
        // Si el usuario pulsa la tecla enter o el punto y no hay ningun otro
        // punto
        if(teclaPulsada==13)
        {
            return true;
        }

        // devolvemos true o false dependiendo de si es numerico o no
      
        return /\d/.test(String.fromCharCode(teclaPulsada));
    }else{
        return false;
    }
}
 /*
   function validar(){

	   /*creo una variable de tipo booleana que en principio tendrá un valor true(verdadero), 
	   y que retornaremos en false(falso) cuando nuestra condición no se cumpla   
	   var todo_correcto = true;

	   /*El primer campo que comprobamos es el del nombre. Lo traemos por id y verificamos 
	   la condición, en este caso, por ejemplo, le decimos que tiene que tener más de 2 dígitos 
	   para que sea un nombre válido. Si no tiene más de dos dígitos, la variable todo_correcto 
	   devolverá false.
	   var expresion = /^[a-z A-Z]$/i;
	   var vletra = document.form1.email.value;
	   if (!expresion.test(vletra)){
	       todo_correcto = false;
	   }

	   /*Hacemos lo mismo con el campo dirección. En este caso le pediremos al usuario que 
	   introduzca al menos 10 caracteres.
	   if(document.getElementById('direccion').value.length < 10 ){
	       todo_correcto = false;
	   }

	   /*Para comprobar la edad, utilizaremos la función isNaN(), que nos dirá si el valor 
	   ingresado NO es un número (NaN son las siglas de Not a Number). Si la edad no es un 
	   número, todo_correcto será false.
	   if(isNaN(document.getElementById('vnumero').value)){
	       todo_correcto = false;
	   }

	   /*Para comprobar el email haremos uso de una expresión regular. Esto es una secuencia 
	   de caracteres que nos dirá si el valor ingresado por el usuario tiene estructura de 
	   correo electrónico. Lo que hacemos es obtener el value del campo de texto destinado 
	   al email, y le aplicamos el método test() del objeto global RegExp(que nos permite 
	   trabajar con expresiones regulares).
	   var expresion = /^[a-z][\w.-]+@\w[\w.-]+\.[\w.-]*[a-z][a-z]$/i;
	   var email = document.form1.email.value;
	   if (!expresion.test(email)){
	       todo_correcto = false;
	   }

	   /*Para validar el select debemos añadir un value distinto a cada option. En el 
	   código, he asignado un value con  valor vacío al primer option. Los siguientes, 
	   al no estar definidos toman el valor por defecto. Por tanto, si todos tienen value, 
	   lo único que tenemos que comprobar es que este no sea vacío. Si es vacío, todo_correcto 
	   será false.
	   if(document.getElementById('vvacio').value == ''){
	       todo_correcto = false;
	   }

	   /*Validaremos también el checkbox del formulario. Todos los 
	   checkbox tienen una propiedad llamada checked. Entonces 
	   hacemos el if y decimos que si nuestro checkbox NO está 
	   checked, estará mal.
	   if(!document.getElementById('acepto').checked){
	       todo_correcto = false;
	   }

	   /*Por último, y como aviso para el usuario, si no está todo bién, osea, si la variable 
	   todo_correcto ha devuelto false al menos una vez, generaremos una alerta advirtiendo 
	   al usuario de que algunos datos ingresados no son los que esperamos.
	   if(!todo_correcto){
	   alert('Algunos campos no están correctos, vuelva a revisarlos');
	   }

	   return todo_correcto;
	   }
   
	*/ 
   
//fin ready
  
   
   function soloLetras(e)
   {
       // capturamos la tecla pulsada
       var teclaPulsada=window.event ? window.event.keyCode:e.which;
       // capturamos el contenido del input
       var valor=document.getElementById("id_nombre").value;

       var s="/^[A-Z a-z]/i";
           // 13 = tecla enter
           // Si el usuario pulsa la tecla enter o el punto y no hay ningun otro
           // punto
           if(teclaPulsada.test(s))
           {
               return true;
           

       }else{
           return false;
       }
   }
   