//
//  IdentifierProtocol.swift
//  TableViewApp
//
//  Created by 차소민 on 1/15/24.
//

import UIKit

protocol Identifier {
    static var id: String { get }
}

extension UITableViewCell: Identifier {
    static var id: String {
        return String(describing: self)
    }
}

extension UIViewController: Identifier {
    static var id: String {
        return String(describing: self)
    }
}
