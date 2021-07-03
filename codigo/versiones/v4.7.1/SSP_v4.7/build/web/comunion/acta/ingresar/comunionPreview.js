window.onload=setup;

function setup(  ) {
   document.getElementById('Parroquia').style.display='block';
   document.getElementById('Solicitante').style.display='none';
   document.getElementById('Padres').style.display='none';
   document.getElementById('Padrinos').style.display='none';
   document.getElementById('Registro_eclesiastico').style.display='none';
   document.getElementById('Observacion').style.display='none';
}

function show(newItem) {
   var item = document.getElementById(newItem);
   if (item.style.display=='none') {
       item.style.display='block';
   } else {
       item.style.display='none';
   }
}