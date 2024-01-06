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
    
    var isCheck: Bool = false
    
    @IBAction func checkButtonTapped(_ sender: UIButton) {
        isCheck.toggle()
        if isCheck {
            checkButton.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
        } else {
            checkButton.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
        }
    }
    
}
