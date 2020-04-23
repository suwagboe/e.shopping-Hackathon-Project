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
        addTarget()
        updateUI()
    }
    
    @objc private func actionSheetButtonPressed(_ sender: UIButton) {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel)
        let shareAction = UIAlertAction(title: "Share", style: .default) { shareAction in
            self.shareCompany()
        }
        guard let selectedCompany = self.company, let watchTitle = !self.dataPersistence.hasItemBeenSaved(selectedCompany) ? "Watch" : "Unwatch" else {
            return
        }
        

        let watchAction = UIAlertAction(title: watchTitle, style: .default) { watchAction1 in
            if watchTitle == "Watch" {
                self.watchCompany()
            } else {
                self.unwatchCompany()
            }
            
        }

        alertController.addAction(shareAction)
        alertController.addAction(watchAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true)
    }
    private func addTarget(){
        detailView.contextButton.addTarget(self, action: #selector(actionSheetButtonPressed(_:)), for: .touchUpInside)
        detailView.newsArticlesButton.addTarget(self, action: #selector(segueToNewsController), for: .touchUpInside)
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
    
    private func updateUI(){
        
        let categories = ["Animals", "People", "Politics", "Environment", "Sustainability"]
        
        
        guard let company = self.company else {
            return
        }
        let categoriesBoolOrdered = [company.animalsRating, company.peopleRating, company.politicsRating, company.environmentRating, company.sustainabilityRating]
        
        for (index, rating) in categoriesBoolOrdered.enumerated() {
            
            if rating == true {
                detailView.categoryBoolImageArr[index].image = UIImage(systemName: "checkmark.circle")
            } else {
                detailView.categoryBoolImageArr[index].image = UIImage(systemName: "xmark.circle")
            }
        }
        
        detailView.scoreImage.image = UIImage(named: getRatingImage(score: company.getCompanyRating(for: company)))
        detailView.descriptionTextView.text = company.desc
        detailView.companyNameLabel.text = company.name
        detailView.alertTextView.text = company.alertMsg
    }
    
    private func getRatingImage(score: Int) -> String {
      //  var newImage = ""
       switch score {
       case 0:
          return "ZeroRating"
       case 1:
          return "OneRating"
       case 2:
          return "TwoRating"
       case 3:
          return "ThreeRating"
       case 4:
        return  "FourRating"
       case 5:
          return "FiveRating"
       default:
         return  "􀒊"
       }
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
        let vc = NewsViewController(company)
        present(vc, animated: true)
    }
    
    private func getCompanyRating() {
        guard let companyToBeRated = company else {
            return
        }
        companyScore = company?.getCompanyRating(for: companyToBeRated)
    }
    
}
