//
//  ViewController.swift
//  Formulario
//
//  Created by Diseno on 29/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNombreProducto: UITextField!
    @IBOutlet weak var tfModeloProducto: UITextField!
    @IBOutlet weak var tfCantidadProducto: UITextField!
    @IBOutlet weak var tfPrecioProducto: UITextField!
    @IBOutlet weak var swDisponibilidad: UISwitch!
    @IBOutlet weak var btnGuardar: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.btnGuardar.layer.cornerRadius = self.btnGuardar.bounds.height/2
        
        
        
    }

    @IBAction func guardarProducto(_ sender: UIButton) {
        let nombre:String = tfNombreProducto.text!
        let modelo:String = tfModeloProducto.text!
        let cantidad:Int = Int(tfCantidadProducto.text!) ?? 0
        let precio : Double = Double(tfPrecioProducto.text!) ?? 0.00
        if !nombre.isEmpty && !modelo.isEmpty{
            let producto = Producto(nombre: nombre, modelo: modelo, cantidad: cantidad, precio: precio, disponibilidad: swDisponibilidad.isOn)
            producto.store()
            
        }
        
    }
    
}

