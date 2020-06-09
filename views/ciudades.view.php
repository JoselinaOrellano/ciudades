<?php
require_once ('libs/Smarty.class.php');
class ciudadesVista{
    private $smarty;
    
    function __construct(){
        $this->smarty = new Smarty();
        $this->smarty->assign('base_url', BASE_URL);
    }
    
    public function Inicio($ciudades){        
        $this->smarty->assign('ciudades', $ciudades);        
        $this->smarty->display('inicio.tpl');
    }
    public function detalleCiudad($ciudad){
        $this->smarty->assign('ciudad', $ciudad);        
        $this->smarty->display('detallesCiudad.tpl');
    }
    public function modificarCiudad($ciudad){
        $this->smarty->assign('ciudad', $ciudad);
        $this->smarty->display('formularioModificarCiudad.tpl');    

    }
    public function listaCiudades($ciudades){
        $this->smarty->assign('ciudades', $ciudades);        
        $this->smarty->display('listaCiudades.tpl');
    }
    public function agregarCiudad(){
        $this->smarty->display('agregarCiudad.tpl');
    }
}