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
        stack.alignment = .trailing
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
        return image
    }()
    public lazy var categoryBoolImageArr: [UIImageView] = [ratingImage1, ratingImage2, ratingImage3, ratingImage4, ratingImage5]
    
    public lazy var companyLogoImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "heart")
        return image
    }()
    public lazy var transparentView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.alpha = 0.2
        return view
    }()
    public lazy var companyNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Company Name"
        return label
    }()
    public lazy var descriptionTextView: UITextView = {
        let field = UITextView()
        field.text = """
        TEXT TEXT TEXT TEXT TEXT TEXT
        TEXT TEXT TEXT TEXT TEXT TEXT
        TEXT TEXT TEXT TEXT TEXT TEXT
        TEXT TEXT TEXT TEXT TEXT TEXT
"""
        return field
    }()
    public lazy var contextButton: UIButton =  {
        let button = UIButton()
        button.setImage(UIImage(systemName: "ellipsis.circle"), for: .normal)
        button.frame.size = CGSize(width: 100, height: 100)
         button.imageView?.contentMode = .scaleAspectFit
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
        image.image = UIImage(named: "ZeroRating")
        return image
    }()

    // This will be set behind the alert
    public lazy var alertView: UIView = {
        let view = UIView()
        return view
    }()
    public lazy var alertTextView: UITextField = {
        let field = UITextField()
        return field
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
        newsArticlesButtonConstraints()
        labelStackConstraints()
        imageStackConstraints()
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
}
