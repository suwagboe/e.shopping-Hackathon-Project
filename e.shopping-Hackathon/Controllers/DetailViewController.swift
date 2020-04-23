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
        view.backgroundColor = .white
        addTarget()
        updateUI()
        detailView.companyLogoImageView.image = UIImage(named: company?.name ?? "xmark.octagon")
        detailView.descriptionTextView.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "News", style: .plain, target: self, action: #selector(segueToNewsController(_:)))
        navigationItem.rightBarButtonItem?.tintColor = .black
        navigationItem.backBarButtonItem?.tintColor = .black
        detailView.newsArticlesButton.isHidden = true
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
        detailView.alertTextView.isEditable = false
        detailView.descriptionTextView.isEditable = false
        detailView.companyNameLabel.text = "About this company"
        detailView.alertTextView.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
//        detailView.descriptionTextView.
//        detailView.description
        navigationItem.title = company?.name
        let categories = ["Animals", "People", "Politics", "Environment", "Sustainability"]
        
        guard let company = self.company else {
            return
        }
        let categoriesBoolOrdered = [company.animalsRating, company.peopleRating, company.politicsRating, company.environmentRating, company.sustainabilityRating]
        
        for (index, rating) in categoriesBoolOrdered.enumerated() {
            
            if rating == true {
                detailView.categoryBoolImageArr[index].image = UIImage(systemName: "checkmark.circle")
                detailView.categoryBoolImageArr[index].tintColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            } else {
                detailView.categoryBoolImageArr[index].image = UIImage(systemName: "xmark.circle")
                detailView.categoryBoolImageArr[index].tintColor = #colorLiteral(red: 0.7930985689, green: 0.07609080523, blue: 0, alpha: 1)
            }
        }
        
        detailView.scoreImage.image = UIImage(named: getRatingImage(score: company.getCompanyRating(for: company)))
        detailView.descriptionTextView.text = company.desc
//        detailView.companyNameLabel.text = company.name
        
        detailView.alertTextView.text = ("Alert: \(company.alertMsg)")
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
    
    @objc private func segueToNewsController(_ sender: UIBarButtonItem){
        
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
