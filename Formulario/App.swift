//
//  App.swift
//  Formulario
//
//  Created by Diseno on 29/01/21.
//

import UIKit

class App: NSObject {
    static var shared = App()
    let defaults = UserDefaults.standard
    var productos:[Producto] = []
}
