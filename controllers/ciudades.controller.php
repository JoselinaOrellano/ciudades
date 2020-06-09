<?php
require_once 'models/ciudades.model.php';
require_once 'views/ciudades.view.php';

class ciudadesControlador {
    private $modelo;
    private $vista;
    public function __construct() {
        $this->modelo = new ciudadesModelo();
        $this->vista = new ciudadesVista();
    }

    public function imprimirInicio(){
        $ciudades=$this->modelo->obtenerCiudades();
        $this->vista->Inicio($ciudades);
    }
    public function detalleCiudad($ciudad){
        $descripcion=$this->modelo->mostrarCiudad($ciudad);
        $this->vista->detalleCiudad($descripcion);
    }
    public function modificarCiudad($idciudad){
        $ciudad=$this->modelo->obtenerCiudad($idciudad);
        $this->vista->modificarCiudad($ciudad); 
    }
    public function listaCiudades(){
        $ciudades=$this->modelo->obtenerCiudades();
        $this->vista->listaCiudades($ciudades);
    }
    public function guardarCambios($ciudad){
        $nombre = $_GET['nombre'];
        $provincia = $_GET['provincia'];
        $descripcion = $_GET['descripcion'];
        $imagen = $_GET['imagen'];
        $codpostal =$_GET['codpostal'];
        $this->modelo-> modificarCiudad($ciudad, $nombre, $provincia, $descripcion, $imagen, $codpostal);
        header("Location: " . BASE_URL . "modificar/todo");
    }
    public function eliminarCiudad($ciudad){
        $this->modelo->eliminarCiudad($ciudad);
        header("Location: " . BASE_URL . "modificar/todo");        
    }
    public function agregarCiudad(){
        $this->vista->agregarCiudad();
    }
    public function cargarCiudad(){
        $nombre = $_GET['nombre'];
        $descripcion = $_GET['descripcion'];
        $provincia = $_GET['provincia'];
        $imagen = $_GET['imagen'];
        $codpostal =$_GET['codpostal'];

        $this->modelo->cargarCiudad($nombre, $descripcion, $provincia, $imagen, $codpostal);
        header("Location: " . BASE_URL . "");
    }
}
