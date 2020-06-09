{include 'header.tpl'}
{include 'nav.tpl'}

  <div class="album py-5 bg-light">
    <div class="container">

      <div class="row">
        {foreach $ciudades item=ciudad}
          <div class="col-md-4">
            <div class="card mb-4 shadow-sm">
              <img src="{$ciudad->imagen}" class="card-img-top" alt="..." width="100%" height="225">
              <div class="card-body">
                <h4>{$ciudad->nombre}</h4>
                <p class="card-text">{$ciudad->provincia}</p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="btn-group">
                    <a href="modificar/{$ciudad->id_ciudad}" class="btn btn-info boton">Modificar</a>
                    <a href="eliminar/{$ciudad->id_ciudad}" class="btn btn-info boton">Eliminar</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        {/foreach}
      </div>
    </div>
  </div>

