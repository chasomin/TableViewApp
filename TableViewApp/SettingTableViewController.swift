//
//  SettingTableViewController.swift
//  TableViewApp
//
//  Created by 차소민 on 1/7/24.
//

import UIKit

class SettingTableViewController: UITableViewController {

    
    @IBOutlet var profileImage: UIImageView!
    
    @IBOutlet var userNameLabel: UILabel!
    
    @IBOutlet var subtitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImage.layer.cornerRadius = profileImage.frame.width / 2
        profileImage.image = UIImage(systemName: "person.fill")
        profileImage.backgroundColor = .white
        
        userNameLabel.text = "차소민"
        userNameLabel.font = .boldSystemFont(ofSize: 15)
        
        subtitleLabel.text = "Apple ID, iCloud+, 미디어 및 구입 항목"
        subtitleLabel.font = .systemFont(ofSize: 10)
        
    }

}
