$(document).ready(function()
{
  $("#resultado").html('<p>-</p>');
});

function buscar()
{
  var textoBusqueda = $("input#busqueda").val();

  if (textoBusqueda != "")
  {
    $.post("js/buscar_verbo.php", {valorBusqueda: textoBusqueda}, function(mensaje)
    {
      $("#resultado").html(mensaje);
    });
  }
  else
  { 
    $("#resultado").html('<p>-</p>');
  };
};