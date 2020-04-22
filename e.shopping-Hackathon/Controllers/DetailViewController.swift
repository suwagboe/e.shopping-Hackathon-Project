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
