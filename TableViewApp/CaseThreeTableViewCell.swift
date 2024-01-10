//
//  CaseThreeTableViewCell.swift
//  TableViewApp
//
//  Created by 차소민 on 1/5/24.
//

import UIKit

class CaseThreeTableViewCell: UITableViewCell {
    @IBOutlet var roundedView: UIView!
    
    @IBOutlet var checkButton: UIButton!
    
    @IBOutlet var todoLabel: UILabel!
    
    @IBOutlet var favoriteButton: UIButton!
    
    
    func configureCell(data: ShoppingTodo) {
        roundedView.layer.cornerRadius = 10
        roundedView.backgroundColor = .systemGray6
        
        todoLabel.text = data.item
        todoLabel.font = .systemFont(ofSize: 13)
        
        let favoriteImage = data.favorite ? "star.fill" : "star"
        favoriteButton.setImage(UIImage(systemName: favoriteImage), for: .normal)
        
        let checkImage = data.check ? "checkmark.square.fill" : "checkmark.square"
        checkButton.setImage(UIImage(systemName: checkImage), for: .normal)

        
    }
    
}
