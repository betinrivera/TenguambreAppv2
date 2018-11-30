//
//  RestauranteController.swift
//  TenguambreApp
//
//  Created by Alumno on 29/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class RestauranteController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var rest : DatosTemporales?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DatosRestaurante.restaurantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellRestaurante") as! CeldaRestaurante
        
        celda.lblRestaurante.text = DatosTemporales.restaurantes[indexPath.row].nombre
        celda.imgViewRestaurante.image = DatosTemporales.restaurantes[indexPath.row].logotipo
        
        //celda.lblRestaurante.text = DatosRestaurante.restaurantes[indexPath.row].nombre
        //celda.imgViewRestaurante.image = DatosRestaurante.restaurantes[indexPath.row].logotipo
        return celda
    }
    
    
    
    
    
    
    
    
}
