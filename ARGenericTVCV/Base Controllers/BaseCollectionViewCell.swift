//
//  BaseCollectionViewCell.swift
//  iHealth
//
//  Created by Ahmed Ramy on 7/1/18.
//  Copyright © 2018 Ahmed Ramy. All rights reserved.
//

import UIKit

class BaseCollectionViewCell<ModelData>: UICollectionViewCell {
    var item: ModelData!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

}
