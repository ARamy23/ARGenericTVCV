//
//  ExampleCell.swift
//  ARGenericTVCV
//
//  Created by Ahmed Ramy on 7/12/18.
//  Copyright © 2018 Ahmed Ramy. All rights reserved.
//

import UIKit

class ExampleCell: BaseCollectionViewCell<ExampleModel> {

    @IBOutlet weak var nameLabel: UILabel!

    override var item: ExampleModel!
    {
        didSet
        {
            
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
