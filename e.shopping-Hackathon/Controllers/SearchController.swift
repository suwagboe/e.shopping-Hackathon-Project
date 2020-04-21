//
//  MainViewController.swift
//  e.shopping-Hackathon
//
//  Created by Pursuit on 4/21/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class SearchController: UIViewController {
    
    private let searchController = SearchView()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureController()
      
    }
    
     override func loadView() {
       view = searchController
     }
    
    private func configureController(){
     
       searchController.collection.register(UINib(nibName: "SearchCell", bundle: nil), forCellWithReuseIdentifier: "searchCell")
         
         
        searchController.searchBar.delegate = self
        searchController.collection.delegate = self
        searchController.collection.dataSource = self
    }
    
  
}

extension SearchController: UISearchBarDelegate {
    
}

extension SearchController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "searchCell", for: indexPath) as? SearchCell else {
            fatalError("Could not cast as SearchCell double check if this was applied correctly.")
        }

        return cell
    }
    
    
}

extension SearchController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
             let maxSize: CGSize = UIScreen.main.bounds.size
          let spacingBtw: CGFloat = 10.0
          let numOfItems: CGFloat = 2.0
          let itemHeight: CGFloat = maxSize.height * 0.45
          
      
          let maxWidth = maxSize.width
          
            let totalSpacing: CGFloat = numOfItems * CGFloat(spacingBtw)
          
              let itemWidth = (maxWidth - totalSpacing) / numOfItems
          
             return CGSize(width: itemWidth, height: itemHeight)
           }
    
    
           func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
             return UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5)
           }
    
}
