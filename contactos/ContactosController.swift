//
//  ViewController.swift
//  contactos
//
//  Created by Alumno on 10/24/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ContactosController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContactos") as! CeldaContactosController
        celda.lblContacto.text = contactos[indexPath.row].contacto
        celda.lblNumero.text = contactos[indexPath.row].numero
        return celda
    }
    
    @IBOutlet weak var TvContactos: UITableView!
    var contactos: [Contactos] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        contactos.append(Contactos(contacto: "Erik Pereo", numero: "6441644718"))
        contactos.append(Contactos(contacto: "Danna Aguilar", numero: "6444661426"))
        contactos.append(Contactos(contacto: "Idalia Padilla", numero: "6441841314"))
        contactos.append(Contactos(contacto: "Adan Vargas", numero: "6442282390"))
        contactos.append(Contactos(contacto: "Natalia Lujan", numero: "6441708721"))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //@IBAction func doTapNuevoC(_ sender: Any) {
        //performSegue(withIdentifier: "nuevocontacto", sender: self)
    //}
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editarcontacto" {
        let destino = segue.destination as! EditarController
        destino.callbackActualizar = EditarContacto
        destino.contactos = contactos[TvContactos.indexPathForSelectedRow!.row]
        }
        if segue.identifier == "nuevocontacto" {
            let destino = segue.destination as! NuevoContactoController
            destino.callbackActualizar = NuevoContacto
        }
    }
    func NuevoContacto (contactos:Contactos){
        self.contactos.append(contactos)
        TvContactos.reloadData()
    }
    func EditarContacto (contactos:Contactos) {
        TvContactos.reloadData()
    }

        }

    





