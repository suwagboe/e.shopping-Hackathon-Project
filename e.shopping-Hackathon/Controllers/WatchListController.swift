//
//  WatchListController.swift
//  e.shopping-Hackathon
//
//  Created by Gregory Keeley on 4/21/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class WatchListController: UIViewController {
    
    private let watchListView = WatchListView()
    
    // TODO: Replace Array with Company Model
    private var companies = [Any]() {
        didSet {
            DispatchQueue.main.async {
                self.watchListView.tableView.reloadData()
            }
        }
    }
    
    override func loadView() {
        view = watchListView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImage(named: "suspicious")
        let imageView = UIImageView(image: backgroundImage)
        self.watchListView.tableView.backgroundView = imageView
        watchListView.tableView.dataSource = self
        watchListView.tableView.delegate = self
        
        watchListView.tableView.register(WatchListViewCell.self, forCellReuseIdentifier: "watchListCell")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController, let indexPath = watchListView.tableView.indexPathForSelectedRow else {
            fatalError("Failed to get indexPath and detailViewController")
        }
        
        // TODO: initiate once the company model is complete
        //let theCompany = companies[indexPath.row]
       // detailVC.company = theCompany
        
    }
    
    private func fetchCompanies() {
        
        
    }
    
}


extension WatchListController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "watchListCell", for: indexPath) as? WatchListViewCell else {
                   fatalError("Couldn't dequeue the CalendarCell")
               }
        // TODO: initiate once the company model is complete
      //  let favComp = companies[indexPath.row]
        cell.configureCell()
        cell.backgroundColor = UIColor(white: 0.2, alpha: 0.3)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
}


