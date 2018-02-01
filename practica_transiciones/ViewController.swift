//
//  ViewController.swift
//  practica_transiciones
//
//  Created by Maestro on 29/01/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblPregunta: UILabel!
    @IBOutlet weak var imgObjeto: UIImageView!
    @IBOutlet weak var btnSi: UIButton!
    @IBOutlet weak var btnNo: UIButton!

    @IBOutlet weak var vwQuiz: UIView!
    

    
    var preguntas : [Pregunta] = []
    var npregunta = 0
    
    
    @IBAction func bola(_ sender: Any) {
        if(btnSi.isHidden == true)
        {
            
            UIView.transition(with: vwQuiz, duration: 0.5, options: [.transitionCurlDown], animations: {
                
                
                self.btnSi.isHidden = false
                self.btnNo.isHidden = false
                self.npregunta += 1
                
                self.lblPregunta.text = self.preguntas[self.npregunta].pregunta
                self.imgObjeto.image = self.preguntas[self.npregunta].imagen
                
            }, completion: nil)

            
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
    
    
    }
    
    
    @IBAction func btnSi(_ sender: Any) {
    
        
        UIView.transition(with: vwQuiz, duration: 0.5, options: [.transitionCurlUp], animations: {
            
            if(self.preguntas[self.npregunta].respuesta == true)
            {
                self.imgObjeto.image = UIImage(named: "si")
                
            } else
            {
              self.imgObjeto.image = UIImage(named: "no")
            }
            
            self.btnSi.isHidden = true
            self.btnNo.isHidden = true
            
        }, completion: nil)
    
    }
    
    
    @IBAction func btnNo(_ sender: Any) {
        UIView.transition(with: vwQuiz, duration: 0.5, options: [.transitionCurlUp], animations: {
            
            if(self.preguntas[self.npregunta].respuesta == false)
            {
                self.imgObjeto.image = UIImage(named: "si")
                
            } else
            {
                self.imgObjeto.image = UIImage(named: "no")
            }
            
            self.btnSi.isHidden = true
            self.btnNo.isHidden = true
            
        }, completion: nil)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        btnSi.layer.cornerRadius = 50
        btnNo.layer.cornerRadius = 50
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1
        preguntas.append(Pregunta(imagen: UIImage(named:"red_apple")!, pregunta: "¿Es una calabaza?", respuesta: false))
        
        //2
        preguntas.append(Pregunta(imagen: UIImage(named:"gatito comiendo")!, pregunta: "¿El gatito esta comiendo?", respuesta: true))
        
        //3
        preguntas.append(Pregunta(imagen: UIImage(named:"happy face")!, pregunta: "¿La cara esta sonriendo?", respuesta: true))
        
        //4
        preguntas.append(Pregunta(imagen: UIImage(named:"tren")!, pregunta: "¿El tren es rojo?", respuesta: true))
        
        //5
        preguntas.append(Pregunta(imagen: UIImage(named:"5")!, pregunta: "¿El resultado es correcto?", respuesta: false))
        //6
        preguntas.append(Pregunta(imagen: UIImage(named:"gato")!, pregunta: "¿Te gustan los gatos?", respuesta: true))
        
        //7
        preguntas.append(Pregunta(imagen: UIImage(named:"lluvia")!, pregunta: "¿Esta lloviendo?", respuesta: true))
        
        //8
        preguntas.append(Pregunta(imagen: UIImage(named:"pulpo")!, pregunta: "¿Es una rana?", respuesta: false))
        
        //9
        preguntas.append(Pregunta(imagen: UIImage(named:"paper")!, pregunta: "¿Es una bicicleta?", respuesta: false))
        
        //10
        preguntas.append(Pregunta(imagen: UIImage(named:"verde")!, pregunta: "¿La hoja es verde?", respuesta: false))
        
        
                
        lblPregunta.text = preguntas[npregunta].pregunta
        imgObjeto.image = preguntas[npregunta].imagen
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

