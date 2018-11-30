//
//  ViewController.swift
//  TenguambreApp
//
//  Created by Alumno on 27/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var TvTipoComidas: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Datos.tipocomida.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CellTipoComida") as! CeldaComidas
        celda.imgTipoComidas.image = Datos.tipocomida[indexPath.row].imagen
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 103
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        DatosTemporales.nombre = DatosRestaurante.restaurantes[(TvTipoComidas.indexPathForSelectedRow?.row)!].nombre
        DatosTemporales.logotipo = DatosRestaurante.restaurantes[(TvTipoComidas.indexPathForSelectedRow?.row)!].logotipo

        let destino = segue.destination as! RestauranteController
        
        destino.rest = DatosRestaurante.restaurantes[(TvTipoComidas.indexPathForSelectedRow?.row)!].nombre
        
        
        
        
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

