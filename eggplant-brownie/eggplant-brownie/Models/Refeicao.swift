//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Alberto Rodrigues on 25/10/22.
//

import UIKit

class Refeicao: NSObject {
    let nome: String
    let felicidade :Int
    let itens : Array<Item> = []
    
    init (nome: String, felicidade: Int){
        self.nome = nome
        self.felicidade = felicidade
    }
    
    func somaCalorias(refeicao:Refeicao) -> Double {
        var caloriasTotais = 0.0
        for item in refeicao.itens{
            caloriasTotais += item.calorias
        }
        return caloriasTotais
    }
    
}
