//
//  Restaurantes.swift
//  TenguambreApp
//
//  Created by Alumno on 29/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Restaurantes {
    
    var nombre : String?
    var logotipo : UIImage?
    var descripcion : String?
    var direccion : String?
    var telefono : String?
    var menu : UIImage?
    
    init(nombre: String, logotipo: UIImage?, descripcion: String?, direccion: String?, telefono: String, menu: UIImage) {
        
        self.nombre = nombre
        self.logotipo = logotipo
        self.descripcion = descripcion
        self.direccion = direccion
        self.telefono = telefono
        self.menu = menu
    }
    
}
