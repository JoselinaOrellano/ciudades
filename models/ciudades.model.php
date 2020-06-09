<?php

class ciudadesModelo{
    private function crearConexion() {
        $host = 'localhost';
        $userName = 'root';
        $password = '';
        $database = 'db_ciudades';
        $pdo = new PDO("mysql:host=$host;dbname=$database;charset=utf8",$userName,$password);
        return $pdo;
    }

    public function obtenerCiudades(){  
        $db = $this->crearConexion();
        $sentencia = $db->prepare("SELECT * FROM ciudades");
        $sentencia->execute();
        $ciudades = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $ciudades;
    }
    public function mostrarCiudad($ciudad){
        $db = $this->crearConexion();
        $sentencia = $db->prepare("SELECT * FROM ciudades WHERE ciudades.id_ciudad = ?");
        $sentencia->execute([$ciudad]);
        $descripcionCiudad= $sentencia->fetch(PDO::FETCH_OBJ);    
        return $descripcionCiudad;     
    }
    public function obtenerCiudad($idciudad){
        $db = $this->crearConexion();
        $sentencia = $db->prepare("SELECT * FROM ciudades WHERE id_ciudad = ?");
        $sentencia->execute([$idciudad]);
        $ciudad=$sentencia->fetch(PDO::FETCH_OBJ);
        return $ciudad;
    }  
    public function modificarCiudad($ciudad, $nombre, $provincia, $descripcion, $imagen, $codpostal){
        $db = $this->crearConexion();
        $sentencia = $db->prepare("UPDATE ciudades SET nombre = ? , provincia = ? , 
        descripcion = ? , imagen = ? , codpostal = ? WHERE ciudades.id_ciudad = ? ");
        $sentencia->execute([$nombre, $provincia, $descripcion, $imagen, $codpostal,$ciudad]);
    }
    public function eliminarCiudad($ciudad){
        $db = $this->crearConexion();
        $sentencia = $db->prepare("DELETE FROM ciudades WHERE id_ciudad = ?");
        $sentencia->execute([$ciudad]);
    }
    public function cargarCiudad($nombre, $descripcion, $provincia, $imagen, $codpostal){
        $db = $this->crearConexion();
        $sentencia = $db->prepare("INSERT INTO ciudades(nombre, descripcion, provincia, imagen, codpostal) VALUES(?, ?, ?, ?, ?)");
        $sentencia->execute([$nombre, $descripcion, $provincia, $imagen, $codpostal]);
        
    }
}