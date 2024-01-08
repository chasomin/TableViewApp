//
//  TravelTableViewController.swift
//  TableViewApp
//
//  Created by 차소민 on 1/8/24.
//

import UIKit
import Kingfisher

class TravelTableViewController: UITableViewController {

    let magazine = MagazineInfo().magazine
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 500

    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        magazine.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TravelTableViewCell", for: indexPath) as! TravelTableViewCell
        
        let url = URL(string: magazine[indexPath.row].photo_image)!
        cell.magazineImageView.kf.setImage(with: url)
        cell.magazineImageView.contentMode = .scaleAspectFill
        cell.magazineImageView.layer.cornerRadius = 10
        
        cell.titleLabel.text = magazine[indexPath.row].title
        cell.titleLabel.font = .boldSystemFont(ofSize: 21)
        cell.titleLabel.numberOfLines = 0
        
        cell.subtitleLabel.text = magazine[indexPath.row].subtitle
        cell.subtitleLabel.font = .boldSystemFont(ofSize: 15)
        cell.subtitleLabel.textColor = .lightGray
        
        let format = DateFormatter()
        format.dateFormat = "yyMMdd"
        let date = format.date(from: magazine[indexPath.row].date) ?? Date()
        
        let formatTostring = DateFormatter()
        formatTostring.dateFormat = "yy년 MM월 dd일"
        let result = formatTostring.string(from: date)

        cell.dateLabel.text = result
        cell.dateLabel.font = .boldSystemFont(ofSize: 13)
        cell.dateLabel.textColor = .lightGray

        return cell
        
    }
    


}

