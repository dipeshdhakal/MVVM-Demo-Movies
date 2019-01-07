//
//  NSObjectExtension.swift
//  MVVM-Demo
//
//  Created by Dipesh Dhakal on 1/14/18.
//  Copyright © 2018 Dipesh Dhakal. All rights reserved.
//

import Foundation
import UIKit

extension NSObject {
    
    // Name Of class
    class var stringRepresentation: String {
        let name = String(describing: self)
        return name
    }
}


extension UITableView {
    /// Register a XIB file with UITableView
    internal func registerNib(_ nibName: String) {
        let cellNib = UINib.init(nibName: nibName, bundle: nil)
        register(cellNib, forCellReuseIdentifier: nibName)
    }
}

extension UICollectionView {
    /// use to register nibs in view
    internal func registerNib(_ nibName: String) {
        let cellNib = UINib.init(nibName: nibName, bundle: nil)
        register(cellNib, forCellWithReuseIdentifier: nibName)
    }
}


