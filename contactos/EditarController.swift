//
//  EditarController.swift
//  contactos
//
//  Created by Alumno on 10/26/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation
import UIKit

class EditarController: UIViewController {
    @IBOutlet weak var txtContacto: UITextField!
    @IBOutlet weak var txtNumero: UITextField!
    var contactos: Contactos?
    var texto: String?
    var texto2: String?
    var callbackActualizar: ((Contactos) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if contactos != nil {
            txtContacto.text = contactos?.contacto
            txtNumero.text = contactos?.numero
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doTapGuardar(_ sender: Any) {
        if callbackActualizar != nil {
            contactos?.contacto = txtContacto.text!
            contactos?.numero = txtNumero.text!
            self.navigationController?.popViewController(animated: true)
        }
    

 }
}
