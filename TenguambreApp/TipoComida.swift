//
//  TipoComida.swift
//  TenguambreApp
//
//  Created by Alumno on 29/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class TipoComida {
    
    var nombre : String?
    var imagen: UIImage?
    
    init (imagen: UIImage, nombre: String?) {
        
        self.nombre = nombre
        self.imagen = imagen
        
    }
}
