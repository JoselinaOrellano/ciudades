{include 'header.tpl'}
{include 'nav.tpl'}

<div class="card mb-3 tamañotarjeta">
  <img src="{$ciudad->imagen}" class="card-img-top" alt="..."  width="85%" height="500px">
  <div class="card-body">
    <h5 class="card-title">{$ciudad->nombre}</h5>
    <h6>{$ciudad->provincia}</h6>
    <p>Codigo postal: {$ciudad->codpostal}</p>
    <p class="card-text">{$ciudad->descripcion}</p>
    <a href="" class="btn btn-outline-info">Volver</a>
  </div>
  
</div>