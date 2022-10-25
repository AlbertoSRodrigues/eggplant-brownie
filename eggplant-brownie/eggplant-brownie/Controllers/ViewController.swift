//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Alberto Rodrigues on 20/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var nomeComida: UITextField!
    @IBOutlet var valorNota: UITextField!
    
    @IBAction func buttonPress(_ sender: UIButton) {
        guard
            let valorNota = valorNota.text,
            let nota = Int(valorNota),
            let comida = nomeComida.text else {
            return
        }
        
        let refeicao = Refeicao(nome: comida, felicidade: nota)
        print("Comida: \(refeicao.nome)\n Nota: \(refeicao.felicidade)")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
}

