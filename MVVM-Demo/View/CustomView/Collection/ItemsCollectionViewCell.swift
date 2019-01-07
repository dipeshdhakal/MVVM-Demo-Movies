//
//  ItemsCollectionViewCell.swift
//  MVVM-Demo
//
//  Created by Dipesh Dhakal on 1/17/18.
//  Copyright © 2018 Dipesh Dhakal. All rights reserved.
//

import UIKit

class ItemsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        itemImage.image = nil
        itemImage.layer.masksToBounds = true
        itemImage.layer.cornerRadius = 5.0
    }
}
