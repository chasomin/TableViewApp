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

        cell.configureCell(data: magazine[indexPath.row])
        
        return cell
    }

}

