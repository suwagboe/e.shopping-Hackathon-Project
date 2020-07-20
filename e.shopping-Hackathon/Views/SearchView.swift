//
//  SearchView.swift
//  e.shopping-Hackathon
//
//  Created by Pursuit on 4/21/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class SearchView: UIView {
    
    public lazy var collection: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical // tell it how to scroll
//        layout.itemSize = CGSize(width: 400, height: 400)
        //CGRect.zero means 0 everything
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        cv.backgroundColor = .systemBackground
        
        return cv
    }()
    
    public lazy var searchBar: UISearchBar = {
        let sb = UISearchBar()
        sb.autocapitalizationType = .none
        sb.placeholder = "Search for company (ie: Nestle)"
        return sb
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        configureSearchBar()
        configureCollectionView()
    }
    
    private func configureCollectionView() {
        addSubview(collection)
        collection.backgroundColor = .secondarySystemBackground
        collection.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collection.topAnchor.constraint(equalTo: searchBar.bottomAnchor),
            collection.leadingAnchor.constraint(equalTo: leadingAnchor),
            collection.trailingAnchor.constraint(equalTo: trailingAnchor),
            collection.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    private func configureSearchBar(){
        addSubview(searchBar)
        searchBar.translatesAutoresizingMaskIntoConstraints = false // this will allow for the auto layout infomation to be added instead of the main one
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            searchBar.leadingAnchor.constraint(equalTo: leadingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
