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
        return image
    }()
    private lazy var companyNameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    private lazy var descriptionTextView: UITextView = {
        let field = UITextView()
        return field
    }()
    private lazy var transparentView: UIView = {
        let view = UIView()
        return view
    }()
    private lazy var scoreLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    private lazy var scoreImage: UIImageView = {
        let image = UIImageView()
        return image
    }()
    private lazy var contextButton: UIButton =  {
        let button = UIButton()
        return button
    }()
    // This will be set behind the alert
    private lazy var alertView: UIView = {
        let view = UIView()
        return view
    }()
    private lazy var newsArticlesButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    private func commonInit() {
        
    }
    
}
