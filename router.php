
<?php
    define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

    require_once 'controllers/ciudades.controller.php';
    
    $action= $_REQUEST['action'];
    $urlAction= explode('/',$action);

 
    switch ($urlAction[0]){
        case'': {
            $ctrl= new ciudadesControlador();
            $ctrl ->imprimirInicio();
        } break;
        case'ciudad': {
            $ctrl= new ciudadesControlador();
            $ciudad=$urlAction[1];
            $ctrl ->detalleCiudad($ciudad);
        } break;
        case'modificar': {
            if($urlAction[1]=='todo'){
            $ctrl= new ciudadesControlador();
            $ctrl ->listaCiudades();
            }
            else{
                $ctrl= new ciudadesControlador();
                $idciudad=$urlAction[1];
                $ctrl ->modificarCiudad($idciudad);
            }
        } break;
        case 'guardarcambios':{
            $ctrl= new ciudadesControlador();
            $ciudad=$urlAction[1];
            $ctrl->guardarCambios($ciudad);
        }break;
        case 'eliminar':{
            $ctrl= new ciudadesControlador();
            $ciudad=$urlAction[1];
            $ctrl->eliminarCiudad($ciudad);
        }break;
        case'agregar': {
            $ctrl= new ciudadesControlador();
            $ctrl ->agregarCiudad();
        } break;
        case 'cargar':{
            $ctrl= new ciudadesControlador();
            $ctrl->cargarCiudad();
        }break;
    }