//
//  watchListView.swift
//  e.shopping-Hackathon
//
//  Created by Gregory Keeley on 4/21/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class WatchListView: UIView {
    
    public lazy var tableView: UITableView = {
        let tv = UITableView()
        return tv
    }()
    
    public lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
       // image.layer.cornerRadius = 10
        image.image = UIImage(systemName: "photo")
        return image
    }()

    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        setupTableView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupTableView()
        setupImageView()
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
    
    
    private func setupImageView() {
        addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
            
        ])
    }
    
}
