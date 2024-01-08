//
//  InstaTableViewController.swift
//  TableViewApp
//
//  Created by 차소민 on 1/8/24.
//

import UIKit

class InstaTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InstaTableViewCell", for: indexPath) as! InstaTableViewCell
        cell.contentImageView.image = UIImage(systemName: "teddybear.fill")
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        700
    }

}
