//
//  NewsViewCell.swift
//  e.shopping-Hackathon
//
//  Created by Lilia Yudina on 4/22/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit
//import ImageKit

class NewsViewCell: UITableViewCell {
    
    public lazy var articleTitle: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.font = UIFont.preferredFont(forTextStyle: .headline)
        label.text = "Article title"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupArticleTitleConstraints()
    }
    
    private func setupArticleTitleConstraints() {
        addSubview(articleTitle)
        articleTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            articleTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            articleTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            articleTitle.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
        ])
    }
    
    
    
    public func configureCell(with article: Article) {
        articleTitle.text = article.abstract
    }
}
