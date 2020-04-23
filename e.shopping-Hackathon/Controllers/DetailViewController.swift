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
    
    private let detailView = DetailView()

    private var company: Company?
    private var companyScore: Int?
    
    override func loadView() {
         view = detailView
    }
    
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
        
        let watchAction = UIAlertAction(title: "Watch", style: .default) { watchAction1 in
            guard let selectedCompany = self.company else {
                return
            }
            if !self.dataPersistence.hasItemBeenSaved(selectedCompany){
                watchAction1.setValue("Unwatch", forKey: "Unwatch")
                self.unwatchCompany()
            } else {
                watchAction1.setValue("Watch", forKey: "Watch")
                self.watchCompany()
            }
            
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
        
        let string = "Did you know that \(sharedCompany.name) was recently rated \(sharedCompany.ratingValue) out of 5?"
        let activityVC = UIActivityViewController(activityItems: [string], applicationActivities: nil)
        present(activityVC, animated: true, completion: nil)
    }
    private func watchCompany() {
        addCompanyToWatchList()
    }
    
    private func unwatchCompany(){
        removeCompanyFromWatchList()
    }
    
    private func updateCompanyRatingUI(with company: Company){
        //detailView.cat1Label.text = #keyPath(company.company.name)
    }
    
    @objc private func removeCompanyFromWatchList(){
        guard let watchedCompany = company else {
            return
        }
                
        do {
            guard let deletionIndex = try dataPersistence.loadItems().firstIndex(of: watchedCompany) else {
                return
            }
            try dataPersistence.deleteItem(at: deletionIndex)

        } catch {
            self.showAlert(title: "Deletion Error", message: "Unable to delete")
        }
    }
    
    @objc private func addCompanyToWatchList() {
        guard let company = self.company else {
            return
        }
        do {
            try dataPersistence.createItem(company)
        } catch {
            showAlert(title: "Error", message: "Failed to save company to watch list: \(error)")
        }
    }
    
    @objc private func segueToNewsController(){
        
        guard let company = self.company else {
            return
        }
        //let vc = NewsViewController(company)
        //present(vc)
    }
    
    private func getCompanyRating() {
        guard let companyToBeRated = company else {
            return
        }
        companyScore = company?.getCompanyRating(for: companyToBeRated)
    }
    
}
