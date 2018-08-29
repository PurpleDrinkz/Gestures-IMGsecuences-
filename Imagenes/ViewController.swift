//
//  ViewController.swift
//  Imagenes
//
//  Created by Alumno on 28/08/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTexto: UILabel!
    @IBOutlet weak var imgSecuencia: UIImageView!
    
    @IBAction func doTapGato(_ sender: Any) {
        
    
        //Hacer tap para cambiar etiqueta y empezar/detener secuencia de imágenes
        if imgSecuencia.isAnimating{
            imgSecuencia.stopAnimating()
            lblTexto.text = "Miau"
        }else {
        imgSecuencia.startAnimating()
            lblTexto.text = "Continua"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //Placeholder de la imagen detenida
        imgSecuencia.image = UIImage (named: "0")
        
        //Secuencia de imágenes
        var imagenes : [UIImage] = []
        imagenes.append(UIImage (named: "0")!)
        imagenes.append(UIImage (named: "1")!)
        imagenes.append(UIImage (named: "2")!)
        imagenes.append(UIImage (named: "3")!)
        imagenes.append(UIImage (named: "4")!)
        imagenes.append(UIImage (named: "5")!)
        imagenes.append(UIImage (named: "6")!)
        imagenes.append(UIImage (named: "7")!)

        imgSecuencia.animationImages = imagenes
        imgSecuencia.animationDuration = 0.5
        imgSecuencia.startAnimating()
        
        let miGato = Gato()
        miGato.nombre = "Garfield"
        miGato.vidas = 3
        
        // ! Significa unwrapping
        // ? Significa que puede tener un valor nulo
       
        //Validacion de que miGato.nombre no sea nulo
        if miGato.nombre != nil {
            let nombreGato : String = miGato.nombre!
            lblTexto.text = nombreGato
        }
        
        
        lblTexto.text = miGato.nombre
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

