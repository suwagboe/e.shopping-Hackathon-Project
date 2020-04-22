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
            controller.tabBarItem = UITabBarItem(title: "Search Controller", image: UIImage(systemName: "eyeglasses"), tag: 0)
            
            return controller
            
        }()
        
        private lazy var watch: WatchListController = {
             let controller = WatchListController(dataPersistence)
             controller.tabBarItem = UITabBarItem(title: "Detail", image: UIImage(systemName: "gear"), tag: 1)
            
             return controller
             
         }()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // MARK: this is where you embeed the controller
            viewControllers = [UINavigationController(rootViewController: mainVC)
                , UINavigationController(rootViewController: watch)]
        }
        
        
        
    }
