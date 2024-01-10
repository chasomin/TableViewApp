//
//  StoryCollectionViewCell.swift
//  TableViewApp
//
//  Created by 차소민 on 1/9/24.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageView: UIImageView!
    
    func configureCell(data: String) {
        imageView.kf.setImage(with: URL(string: data))
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = ((UIScreen.main.bounds.width - 40) / 4) / 2
        
    }
}
