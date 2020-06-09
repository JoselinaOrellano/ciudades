{include 'header.tpl'}
{include 'nav.tpl'}

<div class="contenedorformulario">
    <form action="guardarcambios/{$ciudad->id_ciudad}" method="GET">  
    <div class="form-group">
        <label for="inputAddress">Ciudad:</label>
        <input type="text" name="nombre"  value="{$ciudad->nombre}" class="form-control" id="inputAddress" >
    </div>
    <div class="form-group">
        <label for="inputAddress2">Provincia:</label>
        <input type="text" name="provincia"  value="{$ciudad->provincia}"class="form-control" id="inputAddress2">
    </div>
    <div class="form-group">
        <label for="inputAddress2">Descripcion:</label>
        <input type="text" name="descripcion"  value="{$ciudad->descripcion}"class="form-control" id="inputAddress2" >
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
        <label for="inputCity">Imagen:</label>
        <input type="text" name="imagen"  value="{$ciudad->imagen}" class="form-control" id="inputCity">
        </div>
        
        <div class="form-group col-md-2">
        <label for="inputZip">Codigo Postal:</label>
        <input type="text" name="codpostal"  value="{$ciudad->codpostal}" class="form-control" id="inputZip">
        </div>
    </div>
    
    <button type="submit" class="btn btn-info">Guardar cambios</button>
    </form>
</div>