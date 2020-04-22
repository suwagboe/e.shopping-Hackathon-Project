//
//  NewsViewController.swift
//  e.shopping-Hackathon
//
//  Created by Lilia Yudina on 4/22/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit
import SafariServices

class NewsViewController: UIViewController {
    
    private let newsView = NewsView()
    
    private var article = [Article]()
    private var company: Company
    init(_ company: Company) {
        self.company = company
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = newsView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        newsView.tableView.dataSource = self
        newsView.tableView.delegate = self
        newsView.tableView.register(NewsViewCell.self, forCellReuseIdentifier: "newsCell")
        loadAricles()

    }
   
    func loadAricles() {
        NYTTopStoriesAPIClient.fetchCompanyArticles(for: company.name) { (result) in
            switch result {
            case .success(let article):
                self.article = article.response.docs
            case .failure(let appError):
                self.showAlert(title: "Error", message: "App Error \(appError)")
            }
        }
    }


}

extension NewsViewController: UITableViewDataSource, UITableViewDelegate {
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return article.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell", for: indexPath) as? NewsViewCell else {
        fatalError("Couldn't dequeue the NewsViewCell")
    }
    let selectedArticle = article[indexPath.row]

    cell.configureCell(with: selectedArticle)
    return cell
}
func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 140
}
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedArticleUrl = article[indexPath.row].webURL

        guard let url = URL(string: selectedArticleUrl ) else {
            return
        }
        let safari = SFSafariViewController(url: url)
        present(safari, animated: true)
    }
}
