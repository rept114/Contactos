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
    var callbackActualizar: ((String) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtContacto.text = contactos?.contacto
        txtNumero.text = contactos?.numero
        if texto != nil {
            txtContacto.text = texto!
        }
        if texto2 != nil {
            txtNumero.text = texto!
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doTapGuardar(_ sender: Any) {
        if callbackActualizar != nil {
            callbackActualizar!(txtContacto.text!)
            self.navigationController?.popViewController(animated: true)
    }
    

 }
}
