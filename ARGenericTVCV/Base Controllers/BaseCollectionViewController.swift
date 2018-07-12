//
//  BaseCollectionViewController.swift
//  iHealth
//
//  Created by Ahmed Ramy on 7/1/18.
//  Copyright © 2018 Ahmed Ramy. All rights reserved.
//

import UIKit


class BaseCollectionViewController<T: BaseCollectionViewCell<U>, U>: UICollectionViewController, UICollectionViewDelegateFlowLayout
{

    let reuseIdentifier = "Cell"
    var emptyButtonTitle = "Sign up!"
    var modelItems = [U]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UINib(nibName: String(describing: T.self), bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
        let rc = UIRefreshControl()
        rc.addTarget(self, action: #selector(handleRefresh), for: .valueChanged)
        collectionView!.refreshControl = rc

    }

    @objc func handleRefresh()
    {
        collectionView?.refreshControl?.endRefreshing()
        collectionView?.reloadData()
        // this can be built upon with super.handleRefresh() in the children of this class
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {

        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return modelItems.count
        
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! BaseCollectionViewCell<U> 
    
        cell.item = modelItems[indexPath.row]
    
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width, height: self.view.frame.height / 3)
    }
    
}
