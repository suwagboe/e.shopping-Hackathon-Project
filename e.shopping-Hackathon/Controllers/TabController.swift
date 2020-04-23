//
//  TabController.swift
//  e.shopping-Hackathon

//  Created by Pursuit on 4/21/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit
import DataPersistence

class TabController: UITabBarController {
    
    private var dataPersistence = DataPersistence<Company>(filename: "watchedCompanies.plist")
    
    private lazy var mainVC: SearchController = {
        let controller = SearchController(dataPersistence)
        controller.tabBarItem = UITabBarItem(title: "Search Company", image: UIImage(systemName: "eyeglasses"), tag: 0)
        //            controller.tabBarItem.badgeColor = .black
        return controller
        
    }()
    
    private lazy var watch: WatchListController = {
        let controller = WatchListController(dataPersistence)
        
        controller.tabBarItem = UITabBarItem(title: "Watch List", image: UIImage(systemName: "tray.and.arrow.down"), selectedImage: UIImage(systemName: "tray.and.arrow.down"))
        return controller
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: this is where you embeed the controller
        self.tabBar.barTintColor = .systemGroupedBackground
        self.tabBar.tintColor = .black
        self.navigationController?.navigationBar.tintColor = .black
        let navMainVC = UINavigationController(rootViewController: mainVC)
        navMainVC.navigationBar.tintColor = .black
        let navWatchVC = UINavigationController(rootViewController: watch)
        viewControllers = [navMainVC, navWatchVC]
    }
    
    
    
}
