//
//  RefeicaoTableViewController.swift
//  eggplant-brownie
//
//  Created by Isabella Maia Bitencourt on 27/10/22.
//

import Foundation
import UIKit

class RefeicaoTableViewController : UITableViewController{
    
    
    var refeicoes : [Refeicao] = []
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let numberOfRows = refeicoes.count
        return numberOfRows
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = UITableViewCell(style: .default, reuseIdentifier: "celulaRefeicao")
        var conteudoCelula = celula.defaultContentConfiguration()
        conteudoCelula.text = refeicoes[indexPath.row].nome
        celula.contentConfiguration = conteudoCelula
        
        return celula
    }
    
    func adicionarRefeicao (_ refeicao: Refeicao){
        refeicoes.append(refeicao)
        tableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "adicionar"{
            if let viewController = segue.destination as? ViewController{
                viewController.refeicaoTableView = self
            }
        }
    }
}
