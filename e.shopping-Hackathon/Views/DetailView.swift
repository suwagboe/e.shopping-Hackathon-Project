//
//  DetailView.swift
//  e.shopping-Hackathon
//
//  Created by Pursuit on 4/21/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class DetailView: UIView {
    
    public lazy var categoryLabelStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [animalLabel,peopleLabel,politicsLabel,environmentLabel,sustainabilityLabel])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.alignment = .leading
        stack.spacing = 5
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    public lazy var animalLabel: UILabel = {
        let label = UILabel()
        label.text = "Animals:"
        return label
    }()
    public lazy var peopleLabel: UILabel = {
        let label = UILabel()
        label.text = "People:"
        return label
    }()
    public lazy var politicsLabel: UILabel = {
        let label = UILabel()
        label.text = "Politics:"
        return label
    }()
    public lazy var environmentLabel: UILabel = {
        let label = UILabel()
        label.text = "Environment:"
        return label
    }()
    public lazy var sustainabilityLabel: UILabel = {
        let label = UILabel()
        label.text = "Sustainability:"
        return label
    }()
    public lazy var categoryBoolImageStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [ratingImage1, ratingImage2, ratingImage3, ratingImage4, ratingImage5])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.alignment = .center
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    public lazy var ratingImage1: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "questionmark.circle")
        image.contentMode = .scaleAspectFill
        return image
    }()
    public lazy var ratingImage2: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "questionmark.circle")
        image.contentMode = .scaleAspectFill
        return image
    }()
    public lazy var ratingImage3: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "questionmark.circle")
        image.contentMode = .scaleAspectFill
        return image
    }()
    public lazy var ratingImage4: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "questionmark.circle")
        image.contentMode = .scaleAspectFill
        return image
    }()
    public lazy var ratingImage5: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "questionmark.circle")
        image.contentMode = .scaleAspectFill
//        image.layer.masksToBounds = true
        return image
    }()
    public lazy var categoryBoolImageArr: [UIImageView] = [ratingImage1, ratingImage2, ratingImage3, ratingImage4, ratingImage5]
    
    public lazy var companyLogoImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "heart")
        image.contentMode = .scaleAspectFit
        image.layer.cornerRadius = 4
        return image
    }()
    public lazy var transparentView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.layer.cornerRadius = 4
        view.alpha = 0.2
        return view
    }()
    public lazy var companyNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Company Name"
        label.font = UIFont.boldSystemFont(ofSize: 16.0)
        label.font = UIFont(name: "Futura", size: 25)
        return label
    }()
    public lazy var descriptionTextView: UITextView = {
        let view = UITextView()
        view.font = UIFont(name: "Futura", size: 18)
        view.layer.cornerRadius = 8
        view.text = """

        TEXT TEXT TEXT TEXT TEXT TEXT
        TEXT TEXT TEXT TEXT TEXT TEXT
        TEXT TEXT TEXT TEXT TEXT TEXT
        TEXT TEXT TEXT TEXT TEXT TEXT
"""
        return view
    }()
    public lazy var contextButton: UIButton =  {
        let button = UIButton()
        button.setImage(UIImage(systemName: "ellipsis.circle"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 40,left: 40, bottom: 40,right: 40)
        button.frame.size = CGSize(width: 100, height: 100)
        button.imageView?.contentMode = .scaleAspectFill
        button.tintColor = .black
        button.sizeToFit()
        return button
    }()
    public lazy var scoreLabel: UILabel = {
        let label = UILabel()
        label.text = "Score:"
        return label
    }()
    public lazy var scoreImage: UIImageView = {
        let image = UIImageView()
//        image.image = UIImage(systemName: "heart")
        image.image = UIImage(named: "ZeroRating")
        return image
    }()

    // This will be set behind the alert
    public lazy var alertView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    public lazy var alertTextView: UITextView = {
        let view = UITextView()
        view.contentMode = .right
        view.font = UIFont(name: "Futura", size: 18)
        view.textAlignment = .center
        view.layer.cornerRadius = 4
        view.text = """
        TEXT TEXT TEXT TEXT TEXT TEXT
        TEXT TEXT TEXT TEXT TEXT TEXT
        TEXT TEXT TEXT TEXT TEXT TEXT
        TEXT TEXT TEXT TEXT TEXT TEXT
"""
        return view
    }()
    public lazy var newsArticlesButton: UIButton = {
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
        scoreImageConstraints()
        newsArticlesButtonConstraints()
        labelStackConstraints()
        imageStackConstraints()
//        alertBkgdViewConstraints()
        alertTextFieldConstraints()
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
        transparentView.leadingAnchor.constraint(equalTo: leadingAnchor),
        transparentView.trailingAnchor.constraint(equalTo: trailingAnchor),
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
            contextButton.topAnchor.constraint(equalTo: companyLogoImageView.topAnchor, constant: 10),
            contextButton.trailingAnchor.constraint(equalTo: companyLogoImageView.trailingAnchor, constant: -10),
            contextButton.heightAnchor.constraint(equalToConstant: 40),
            contextButton.widthAnchor.constraint(equalToConstant: 40)
        ])
    }
    private func scoreLabelConstraints() {
        addSubview(scoreLabel)
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scoreLabel.topAnchor.constraint(equalTo: companyLogoImageView.bottomAnchor, constant: 20),
//            scoreLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            scoreLabel.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.20),
            scoreLabel.widthAnchor.constraint(equalTo: scoreLabel.heightAnchor),
        ])
    }
    private func scoreImageConstraints() {
        addSubview(scoreImage)
        scoreImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scoreImage.topAnchor.constraint(equalTo: companyLogoImageView.bottomAnchor, constant: 20),
            scoreImage.leadingAnchor.constraint(equalTo: scoreLabel.trailingAnchor),
            scoreImage.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.20),
            scoreImage.widthAnchor.constraint(equalTo: scoreLabel.heightAnchor),
            scoreImage.centerXAnchor.constraint(equalTo: centerXAnchor)
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
    private func labelStackConstraints() {
        addSubview(categoryLabelStack)
        categoryLabelStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            categoryLabelStack.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor, constant: 20),
            categoryLabelStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            categoryLabelStack.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.30),
            categoryLabelStack.bottomAnchor.constraint(equalTo: newsArticlesButton.topAnchor, constant: -20)
        ])
    }
    private func imageStackConstraints() {
        addSubview(categoryBoolImageStack)
        categoryBoolImageStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            categoryBoolImageStack.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor, constant: 20),
            categoryBoolImageStack.leadingAnchor.constraint(equalTo: categoryLabelStack.trailingAnchor, constant: 20),
            categoryBoolImageStack.bottomAnchor.constraint(equalTo: categoryLabelStack.bottomAnchor),
            
        ])
    }
//    private func alertBkgdViewConstraints() {
//        addSubview(alertView)
//        alertView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            alertView.topAnchor.constraint(equalTo: categoryBoolImageStack.topAnchor),
//            alertView.leadingAnchor.constraint(equalTo: categoryBoolImageStack.trailingAnchor, constant: 20),
//            alertView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
//            alertView.bottomAnchor.constraint(equalTo: categoryBoolImageStack.bottomAnchor)
//        ])
//    }
    private func alertTextFieldConstraints() {
        addSubview(alertTextView)
        alertTextView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            alertTextView.topAnchor.constraint(equalTo: categoryBoolImageStack.topAnchor),
            alertTextView.leadingAnchor.constraint(equalTo: categoryBoolImageStack.trailingAnchor, constant: 30),
            alertTextView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            alertTextView.bottomAnchor.constraint(equalTo: categoryBoolImageStack.bottomAnchor)
//        alertTextView.topAnchor.constraint(equalTo: alertView.topAnchor, constant: 2),
//        alertTextView.leadingAnchor.constraint(equalTo: alertView.trailingAnchor, constant: 2),
//        alertTextView.trailingAnchor.constraint(equalTo: alertView.trailingAnchor, constant: -2),
//        alertTextView.bottomAnchor.constraint(equalTo: alertView.bottomAnchor, constant: -2)
        ])
    }
}
