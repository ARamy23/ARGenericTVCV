//
//  CollectionViewController.swift
//  ARGenericTVCV
//
//  Created by Ahmed Ramy on 7/12/18.
//  Copyright © 2018 Ahmed Ramy. All rights reserved.
//

import UIKit


class CollectionViewController: BaseCollectionViewController<ExampleCell, ExampleModel> {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        //you just call the modelItems variable and fill it with data and it will be displayed in a collectionView or a tableView
        modelItems = [
            ExampleModel(name: "Ahmed Ramy"),
            ExampleModel(name: "Yolo Abdo"),
            ExampleModel(name: "El Naggar"),
            ExampleModel(name: "Person")
        ]
    }

}


//Model

struct ExampleModel
{
    let name: String?
}
