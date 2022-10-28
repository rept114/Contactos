//
//  NuevoContactoController.swift
//  contactos
//
//  Created by Alumno on 10/28/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation
import UIKit

class NuevoContactoController: UIViewController {
    
    @IBOutlet weak var txtNumero: UITextField!
    @IBOutlet weak var txtContacto: UITextField!
    var contactos: Contactos?
    var texto: String?
    var texto2: String?
    var callbackActualizar: ((Contactos) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        if callbackActualizar != nil {
            contactos = Contactos(contacto: txtContacto.text ?? "Nombre", numero: txtNumero.text ?? "Número")
            callbackActualizar!(contactos!)
            self.navigationController?.popViewController(animated: true)
        }

        
        
    }
}
