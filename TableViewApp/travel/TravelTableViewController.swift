//
//  TravelTableViewController.swift
//  TableViewApp
//
//  Created by 차소민 on 1/8/24.
//

import UIKit
import Kingfisher

class TravelTableViewController: UITableViewController {
    let magazine = MagazineInfo.magazine
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = UITableView.automaticDimension
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        magazine.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TravelTableViewCell.id, for: indexPath) as! TravelTableViewCell

        cell.configureCell(data: magazine[indexPath.row])
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sv = UIStoryboard(name: "Web", bundle: nil)
        
        let vc = sv.instantiateViewController(identifier: WebViewController.id) as! WebViewController
        
        vc.url = magazine[indexPath.row].link
        
        navigationController?.pushViewController(vc, animated: true)
    }

}


