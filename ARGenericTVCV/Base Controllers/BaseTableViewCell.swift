//
//  BaseTableViewCell.swift
//  iHealth
//
//  Created by Ahmed Ramy on 7/1/18.
//  Copyright © 2018 Ahmed Ramy. All rights reserved.
//

import UIKit

class BaseTableViewCell<ModelData>: UITableViewCell {

    var item: ModelData!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews()
    {
        super.layoutSubviews()
        // Make aditional settings for the layout of the cell here
        
    }
    
}
