//
//  NewsView.swift
//  e.shopping-Hackathon
//
//  Created by Lilia Yudina on 4/22/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class NewsView: UIView {

    public lazy var tableView: UITableView = {
           let tv = UITableView()
           return tv
       }()

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        setupTableView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupTableView()
    }
    
    private func setupTableView() {
        addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
            
        ])
    }
}
