//
//  TravelTableViewCell.swift
//  TableViewApp
//
//  Created by 차소민 on 1/8/24.
//

import UIKit

class TravelTableViewCell: UITableViewCell {

    @IBOutlet var magazineImageView: UIImageView!
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var subtitleLabel: UILabel!
    
    @IBOutlet var dateLabel: UILabel!
    
    let format = DateFormatter()
    let formatTostring = DateFormatter()

    override func awakeFromNib() {
        designCell()
    }
}

extension TravelTableViewCell {
    func configureCell(data: Magazine) {
        magazineImageView.kf.setImage(with: URL(string: data.photo_image))
        
        titleLabel.text = data.title
        
        subtitleLabel.text = data.subtitle
        
        let date = format.date(from: data.date) ?? Date()
        let result = formatTostring.string(from: date)
        dateLabel.text = result
        
    }
    
    func designCell() {
        magazineImageView.contentMode = .scaleAspectFill
        magazineImageView.layer.cornerRadius = 10
        
        titleLabel.font = .boldSystemFont(ofSize: 21)
        titleLabel.numberOfLines = 0
        
        subtitleLabel.font = .boldSystemFont(ofSize: 15)
        subtitleLabel.textColor = .lightGray

        
        format.dateFormat = "yyMMdd"
        formatTostring.dateFormat = "yy년 MM월 dd일"
        
        dateLabel.font = .boldSystemFont(ofSize: 13)
        dateLabel.textColor = .lightGray
        
        selectionStyle = .none
    }
}
