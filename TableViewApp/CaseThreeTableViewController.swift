//
//  CaseThreeTableViewController.swift
//  TableViewApp
//
//  Created by 차소민 on 1/5/24.
//

import UIKit

struct ShoppingTodo {
    let item: String
    var check: Bool
    var favorite: Bool
}

class CaseThreeTableViewController: UITableViewController {

    @IBOutlet var backgroundView: UIView!
    @IBOutlet var shoppingListTextField: UITextField!
    @IBOutlet var addButton: UIButton!
    
    var shoppingList: [ShoppingTodo] = [ShoppingTodo(item: "그립톡 구매하기", check: false, favorite: false),
                                        ShoppingTodo(item: "사이다 구매하기", check: false, favorite: false),
                                        ShoppingTodo(item: "아이패드 케이스 최저가 알아보기", check: false, favorite: false),
                                        ShoppingTodo(item: "양말 구매하기", check: false, favorite: false)]
    
//    var shoppingList = ["그립톡 구매하기", "사이다 구매하기", "아이패드 케이스 최저가 알아보기", "양말 구매하기"] {
//        didSet {
//            tableView.reloadData()
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 55
        backgroundView.layer.cornerRadius = 10
        backgroundView.backgroundColor = .systemGray6
        
        shoppingListTextField.placeholder = "무엇을 구매하실 건가요?"
        
        addButton.setTitle("    추가    ", for: .normal)
        addButton.layer.cornerRadius = 10
        addButton.tintColor = .black
        addButton.backgroundColor = .systemGray5
        
        if shoppingListTextField.text == "" {
            addButton.isEnabled = false
        } else {
            addButton.isEnabled = true

        }
        
        
    }

    @IBAction func addButtonTapped(_ sender: UIButton) {
        shoppingList.append(ShoppingTodo(item: shoppingListTextField.text!, check: false, favorite: false))
        tableView.reloadData()
        shoppingListTextField.text = ""
        addButton.isEnabled = false
    }
    
    @IBAction func keyboardDismiss(_ sender: UITextField) {
    }
    
    @IBAction func userInput(_ sender: UITextField) {
        if shoppingListTextField.text == "" {
            addButton.isEnabled = false
        } else {
            addButton.isEnabled = true
        }
    }
  
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        shoppingList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CaseThreeTableViewCell", for: indexPath) as! CaseThreeTableViewCell
        
        cell.configureCell(data: shoppingList[indexPath.row])
        
        cell.favoriteButton.tag = indexPath.row
        cell.favoriteButton.addTarget(self, action: #selector(favoriteButtonClicked), for: .touchUpInside)
        
        cell.checkButton.tag = indexPath.row
        cell.checkButton.addTarget(self, action: #selector(checkButtonClicked), for: .touchUpInside)
        
        return cell
    }

    @objc func favoriteButtonClicked(sender: UIButton) {
        shoppingList[sender.tag].favorite.toggle()
        tableView.reloadRows(at: [IndexPath(row: sender.tag, section: 0)], with: .fade)
    }
    
    @objc func checkButtonClicked(sender: UIButton) {
        shoppingList[sender.tag].check.toggle()
        tableView.reloadRows(at: [IndexPath(row: sender.tag, section: 0)], with: .fade)

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



