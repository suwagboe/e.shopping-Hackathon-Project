//
//  DetailView.swift
//  e.shopping-Hackathon
//
//  Created by Pursuit on 4/21/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class DetailView: UIView {
    
    private lazy var companyLogoImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "heart")
        return image
    }()
    private lazy var transparentView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.alpha = 0.2
        return view
    }()
    private lazy var companyNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Company Name"
        return label
    }()
    private lazy var descriptionTextView: UITextView = {
        let field = UITextView()
        field.text = """
        TEXT TEXT TEXT TEXT TEXT TEXT
        TEXT TEXT TEXT TEXT TEXT TEXT
        TEXT TEXT TEXT TEXT TEXT TEXT
        TEXT TEXT TEXT TEXT TEXT TEXT
"""
        return field
    }()
    private lazy var contextButton: UIButton =  {
        let button = UIButton()
        button.setImage(UIImage(systemName: "ellipsis.circle"), for: .normal)
        button.frame.size = CGSize(width: 100, height: 100)
         button.imageView?.contentMode = .scaleAspectFit
         button.sizeToFit()
        return button
    }()
    private lazy var scoreLabel: UILabel = {
        let label = UILabel()
        label.text = "Score:"
        return label
    }()
    private lazy var scoreImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "ZeroRating")
        return image
    }()

    // This will be set behind the alert
    private lazy var alertView: UIView = {
        let view = UIView()
        return view
    }()
    private lazy var newsArticlesButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "book.circle"), for: .normal)
        button.frame.size = CGSize(width: 100, height: 100)
        button.imageView?.contentMode = .scaleAspectFit
        button.sizeToFit()
        
//        button.setTitle("News Articles", for: .normal)
        return button
    }()
    
    //MARK:- Override init
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    //MARK:- CommonInit
    private func commonInit() {
        companyLogoConstraints()
        transparentViewConstraints()
        companyNameConstraints()
        descriptionViewConstraints()
        contextButtonConstraints()
        scoreLabelConstraints()
        newsArticlesButtonConstraints()
    }
    //MARK:- Constraint Funcs
    private func companyLogoConstraints() {
        addSubview(companyLogoImageView)
        companyLogoImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            companyLogoImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            companyLogoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            companyLogoImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            companyLogoImageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.30)
        ])
    }
    private func transparentViewConstraints() {
        addSubview(transparentView)
        transparentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        transparentView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
        transparentView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
        transparentView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        transparentView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.30)
        ])
    }
    private func companyNameConstraints() {
        addSubview(companyNameLabel)
        companyNameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            companyNameLabel.topAnchor.constraint(equalTo: companyLogoImageView.topAnchor, constant: 20),
            companyNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            companyNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    private func descriptionViewConstraints() {
        addSubview(descriptionTextView)
        descriptionTextView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descriptionTextView.topAnchor.constraint(equalTo: companyNameLabel.bottomAnchor, constant: 20),
            descriptionTextView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            descriptionTextView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            descriptionTextView.bottomAnchor.constraint(equalTo: companyLogoImageView.bottomAnchor, constant: -20)
        ])
    }
    private func contextButtonConstraints() {
        addSubview(contextButton)
        contextButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contextButton.topAnchor.constraint(equalTo: companyLogoImageView.topAnchor, constant: 20),
            contextButton.trailingAnchor.constraint(equalTo: companyLogoImageView.trailingAnchor, constant: -20)
        ])
    }
    private func scoreLabelConstraints() {
        addSubview(scoreLabel)
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scoreLabel.topAnchor.constraint(equalTo: companyLogoImageView.bottomAnchor, constant: 20),
            scoreLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            scoreLabel.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.20),
            scoreLabel.widthAnchor.constraint(equalTo: scoreLabel.heightAnchor)
        ])
    }
    //MARK:- NewsArticle
    private func newsArticlesButtonConstraints() {
        addSubview(newsArticlesButton)
        newsArticlesButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            newsArticlesButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20),
            newsArticlesButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            newsArticlesButton.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.20),
            newsArticlesButton.widthAnchor.constraint(equalTo: newsArticlesButton.heightAnchor)
        ])
    }
}
