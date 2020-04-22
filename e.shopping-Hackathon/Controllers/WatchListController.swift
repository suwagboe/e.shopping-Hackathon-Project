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
    private var companies = [Company]() {
        didSet {
            watchListView.tableView.reloadData()
            if companies.isEmpty {
                watchListView.tableView.backgroundView = EmptyView(title: "Watch List", message: "There are currently no companies on your watch list. Search for a company you are interested in and add it to your search list.")
            } else {
                watchListView.tableView.backgroundView = nil
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
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let detailVC = segue.destination as? DetailViewController, let indexPath = watchListView.tableView.indexPathForSelectedRow else {
//            fatalError("Failed to get indexPath and detailViewController")
//        }
//
//        // TODO: initiate once the company model is complete
//        //let theCompany = companies[indexPath.row]
//       // detailVC.company = theCompany
//
//    }

    
    private func fetchCompanies() {
        
        
    }
    
}


extension WatchListController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "watchListCell", for: indexPath) as? WatchListViewCell else {
            fatalError("Couldn't dequeue the CalendarCell")
        }
        // TODO: initiate once the company model is complete
        let company = companies[indexPath.row]
        cell.configureCell()
        cell.backgroundColor = UIColor(white: 0.2, alpha: 0.3)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
         if editingStyle == .delete {
             companies.remove(at: indexPath.row)
             tableView.deleteRows(at: [indexPath], with: .fade)
         }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let company = companies[indexPath.row]
        let detailVC = DetailViewController(company)
        navigationController?.pushViewController(detailVC, animated: true)
    }
}


