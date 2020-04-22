//
//  DetailViewController.swift
//  e.shopping-Hackathon
//
//  Created by Pursuit on 4/21/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit
import DataPersistence

class DetailViewController: UIViewController {
    
    private var dataPersistence: DataPersistence<Company>
    init(_ dataPersistence: DataPersistence<Company>, company: Company) {
        self.company = company
        self.dataPersistence = dataPersistence
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been initialized")
    }
    
    private var company: Company?
    private var companyScore: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
    }
    
    @objc private func actionSheetButtonPressed(_ sender: UIButton) {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel)
        let shareAction = UIAlertAction(title: "Share", style: .default) { shareAction in
            self.shareCompany()
        }
        let watchAction = UIAlertAction(title: "Watch", style: .default) { watchAction in
            self.watchCompany()
        }

        alertController.addAction(shareAction)
        alertController.addAction(watchAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true)
    }
    private func shareCompany() {
        guard let sharedCompany = company else {
            return
        }
        
        let string = "Checkout \(sharedCompany.name)'s ethical rating of \(sharedCompany)"
        let activityViewController = UIActivityViewController(activityItems: <#T##[Any]#>, applicationActivities: <#T##[UIActivity]?#>)
    }
    private func watchCompany() {
        addCompanyToWatchList()
    }
    
    @objc private func addCompanyToWatchList() {
        guard let watchedCompany = company else {
            return
        }
        do {
            try dataPersistence.createItem(watchedCompany)
        } catch {
            showAlert(title: "Error", message: "Failed to save company to watch list: \(error)")
        }
    }
    private func getCompanyRating() {
        guard let companyToBeRated = company else {
            return
        }
        companyScore = company?.getCompanyRating(for: companyToBeRated)
    }
    
}
