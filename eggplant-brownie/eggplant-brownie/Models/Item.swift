//
//  Item.swift
//  eggplant-brownie
//
//  Created by Isabella Maia Bitencourt on 25/10/22.
//

import UIKit

class Item: NSObject {
    let nome: String
    let calorias : Double
    
    init(nome: String, calorias: Double){
        self.nome = nome
        self.calorias = calorias
    }
}
