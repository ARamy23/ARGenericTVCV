//
//  BaseTableViewController.swift
//  iHealth
//
//  Created by Ahmed Ramy on 7/1/18.
//  Copyright © 2018 Ahmed Ramy. All rights reserved.
//

import UIKit



class BaseTableViewController<T: BaseTableViewCell<U>, U>: UITableViewController {

    let reuseIdentifier = "Cell"
    
    var modelItems = [U]()
    
    var emptyButtonTitle: String = "Sign up"
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        tableView.register(UINib(nibName: String(describing: T.self), bundle: nil), forCellReuseIdentifier: reuseIdentifier)
        let rc = UIRefreshControl()
        rc.addTarget(self, action: #selector(handleRefresh), for: .valueChanged)
        tableView.refreshControl = rc
        tableView.tableFooterView = UIView()
        
    }

    @objc func handleRefresh()
    {
        tableView.refreshControl?.endRefreshing()
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelItems.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! BaseTableViewCell<U>
        cell.item = modelItems[indexPath.row]
        return cell
    }
    
}
