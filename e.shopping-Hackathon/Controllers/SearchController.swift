//
//  MainViewController.swift
//  e.shopping-Hackathon
//
//  Created by Pursuit on 4/21/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//
import UIKit
import FirebaseFirestore
import DataPersistence

class SearchController: UIViewController {
    
    private var companyList = [Company]() {
        didSet {
            searchController.collection.reloadData()
            emptyViewConfig()
        }
    }
    
    private let searchController = SearchView()
    
    private var company: Company?

    private var dataPersistence: DataPersistence<Company>
    init(_ dataPersistence: DataPersistence<Company>) {
        self.dataPersistence = dataPersistence
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been initialized")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureController()
        navigationItem.title = "Search"
        //self.navigationController?.navigationBar.barTintColor = .systemRed
    }
    
     override func loadView() {
       view = searchController
     }
    
    private func configureController(){
       searchController.collection.register(UINib(nibName: "SearchCell", bundle: nil), forCellWithReuseIdentifier: "searchCell")
        
        searchController.searchBar.delegate = self
        searchController.collection.delegate = self
        searchController.collection.dataSource = self
        emptyViewConfig()
    }
    
    private func emptyViewConfig(){
        if companyList.isEmpty == true {
                        searchController.collection.backgroundView = EmptyView(title: "Welcome To Fair + Square", message: "Please search a for a company so we can get this party started!!")
                    } else {
        searchController.collection.backgroundView = nil
        }
    }
    
    private func loadCompanyData(for enteredText: String) {
        DatabaseService.shared.readCompanies(completion: { [weak self]
            (result) in
            switch result {
            case .failure:
                fatalError("couldn't load the companies from database inside of the search controller")
            case .success(let companies):
                self?.companyList = companies.filter { $0.name.lowercased().contains(enteredText)}
                }
            if !(self?.companyList.isEmpty)!{
                self?.searchController.searchBar.resignFirstResponder()
            }
        })
    }
    
  
}

extension SearchController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        guard let searchText = searchBar.text, !searchText.isEmpty else {
            print("the searchText is not working")
            return
        }
        
        loadCompanyData(for: searchText)

    }
    
}

extension SearchController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return companyList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "searchCell", for: indexPath) as? SearchCell else {
            fatalError("Could not cast as SearchCell double check if this was applied correctly.")
        }
        
        let selecteCompany = companyList[indexPath.row]

        cell.configureCell(with: selecteCompany)
        cell.layer.cornerRadius = 5
        
        return cell
    }
    
    
}

extension SearchController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
             let maxSize: CGSize = UIScreen.main.bounds.size
         // let spacingBtw: CGFloat = 10.0
        //  let numOfItems: CGFloat = 2.0
          let itemHeight: CGFloat = maxSize.height * 0.45
          
        let maxWidth = maxSize.width
          
         //   let totalSpacing: CGFloat = numOfItems * CGFloat(spacingBtw)
          
        let itemWidth = maxWidth * 0.95 
          
             return CGSize(width: itemWidth, height: itemHeight)
           }
    
    
           func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
             return UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5)
           }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // segue to detailView and add the dependency injection
        
        let company = companyList[indexPath.row]
        
        let dvc = DetailViewController(dataPersistence, company: company)
        
        navigationController?.pushViewController(dvc, animated: true)
        
    }
    
}
