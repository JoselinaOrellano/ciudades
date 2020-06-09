{include 'header.tpl'}
{include 'nav.tpl'}

<div class="contenedorformulario">
    <form action="cargar" method="GET">  
    <div class="form-group">
        <label for="inputAddress">Ciudad:</label>
        <input type="text" name="nombre"  class="form-control" id="inputAddress" >
    </div>
    <div class="form-group">
        <label for="inputAddress2">Provincia:</label>
        <input type="text" name="provincia"  class="form-control" id="inputAddress2" >
    </div>
    <div class="form-group">
        <label for="inputAddress2">Descripcion:</label>
        <input type="text" name="descripcion"  class="form-control" id="inputAddress2" >
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
        <label for="inputCity">Imagen:</label>
        <input type="text" name="imagen"  class="form-control" id="inputCity">
        </div>
        
        <div class="form-group col-md-2">
        <label for="inputZip">Codigo Postal:</label>
        <input type="text" name="codpostal" class="form-control" id="inputZip">
        </div>
    </div>
    
    <button type="submit" class="btn btn-info">Agregar ciudad</button>
    </form>
</div>