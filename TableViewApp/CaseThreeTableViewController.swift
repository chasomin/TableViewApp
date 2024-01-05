//
//  CaseThreeTableViewController.swift
//  TableViewApp
//
//  Created by 차소민 on 1/5/24.
//

import UIKit

class CaseThreeTableViewController: UITableViewController {

    @IBOutlet var backgroundView: UIView!
    @IBOutlet var shoppingListTextField: UITextField!
    @IBOutlet var addButton: UIButton!
    
    var shoppingList = ["그립톡 구매하기", "사이다 구매하기", "아이패드 케이스 최저가 알아보기", "양말 구매하기"]


    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.layer.cornerRadius = 10
        backgroundView.backgroundColor = .systemGray6
        
        shoppingListTextField.placeholder = "무엇을 구매하실 건가요?"
        
        addButton.setTitle("    추가    ", for: .normal)
        addButton.layer.cornerRadius = 10
        addButton.tintColor = .black
        addButton.backgroundColor = .systemGray5
    }

    @IBAction func addButtonTapped(_ sender: UIButton) {
        
        shoppingList.append(shoppingListTextField.text!)
        tableView.reloadData()
        shoppingListTextField.text = ""
        
    }
    
    @IBAction func keyboardDismiss(_ sender: UITextField) {
    }
    
    

    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        shoppingList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CaseThreeTableViewCell", for: indexPath) as! CaseThreeTableViewCell
        
        cell.roundedView.layer.cornerRadius = 10
        cell.roundedView.backgroundColor = .systemGray6
        
        cell.checkButton.setTitle("", for: .normal)
        if indexPath.row < 2 {
            cell.checkButton.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
        } else {
            cell.checkButton.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
        }

        cell.todoLabel.text = shoppingList[indexPath.row]
        cell.todoLabel.font = .systemFont(ofSize: 13)
        
        cell.favoriteButton.setTitle("", for: .normal)
        if indexPath.row % 2 == 0 {
            cell.favoriteButton.setImage(UIImage(systemName: "star"), for: .normal)
        } else {
            cell.favoriteButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        55
    }
    

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            shoppingList.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
}