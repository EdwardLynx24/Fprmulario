//
//  Producto.swift
//  Formulario
//
//  Created by Diseno on 29/01/21.
//

import UIKit

class Producto: Codable {
    var nombre:String
    var modelo:String
    var cantidad:Int
    var precio:Double
    var disponibilidad: Bool
    
    
    
    init(nombre:String, modelo:String, cantidad:Int , precio:Double, disponibilidad: Bool) {
        self.nombre = nombre
        self.modelo = modelo
        self.cantidad = cantidad
        self.precio = precio
        self.disponibilidad = disponibilidad
        
        
    }
    func store() {
        // Agregar funcion getProducts
        App.shared.productos.append(self) 
        
        do{
            let encoder = JSONEncoder()
            let data = try encoder.encode(App.shared.productos)
            App.shared.defaults.setValue(data, forKey: "Productos")
        }catch{
            print("La codificacion no fue posible")
            //Producto.store()
        }
        
    }
}
