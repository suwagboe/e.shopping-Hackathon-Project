//
//  WatchListController.swift
//  e.shopping-Hackathon
//
//  Created by Gregory Keeley on 4/21/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit
import DataPersistence

class WatchListController: UIViewController {
    
    private let watchListView = WatchListView()
    
    
    private var dataPersistence: DataPersistence<Company>
    init(_ dataPersistence: DataPersistence<Company>) {
        self.dataPersistence = dataPersistence
        super.init(nibName: nil, bundle: nil)
        dataPersistence.delegate = self
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been initialized")
    }
    
    private var companies = [Company]() {
        didSet {
            watchListView.tableView.reloadData()
            if companies.isEmpty {
                watchListView.tableView.tableFooterView = UIView(frame: .zero)
                watchListView.tableView.backgroundView = EmptyView(title: "Watch List", message: "There are currently no companies on your watch list. Search for a company you are interested in and add it to your watch list.")
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
        navigationItem.title = "Watch List"
        watchListView.tableView.dataSource = self
        watchListView.tableView.delegate = self
        watchListView.tableView.register(WatchListViewCell.self, forCellReuseIdentifier: "watchListCell")
        fetchCompanies()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        let backgroundImage = UIImage(named: "ss")
        let imageView = UIImageView(image: backgroundImage)
        self.watchListView.tableView.backgroundView = imageView
        watchListView.tableView.tableFooterView = UIView(frame: .zero)
        imageView.contentMode = .scaleAspectFit
        
    }
  
    
    private func fetchCompanies() {
        do {
            companies = try dataPersistence.loadItems()
        } catch {
            print("error fetching companies \(error)")
        }
    }
    
}

extension WatchListController: DataPersistenceDelegate{
    func didSaveItem<T>(_ persistenceHelper: DataPersistence<T>, item: T) where T : Decodable, T : Encodable, T : Equatable {
        
        guard let company = item as? Company else {
            return
        }
        companies.append(company)
    }
    
    func didDeleteItem<T>(_ persistenceHelper: DataPersistence<T>, item: T) where T : Decodable, T : Encodable, T : Equatable {
        
        guard let company = item as? Company, let deletionIndex = companies.firstIndex(of: company) else {
            return
        }
        
        companies.remove(at: deletionIndex)
        
        //might need to sync the objects
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
        let company = companies[indexPath.row]
        
        cell.configureCell(company: company)
        cell.backgroundColor = .clear    //UIColor(white: 0.2, alpha: 0.3)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            //companies.remove(at: indexPath.row)
            //tableView.deleteRows(at: [indexPath], with: .fade)
            
            do {
                try dataPersistence.deleteItem(at: indexPath.row)
            } catch {
                self.showAlert(title: "Deletion Error", message: "\(error)")
            }
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let company = companies[indexPath.row]
        let detailVC = DetailViewController(dataPersistence, company: company)
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
}


