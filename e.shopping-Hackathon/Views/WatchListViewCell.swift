//
//  WatchListViewCell.swift
//  e.shopping-Hackathon
//
//  Created by Lilia Yudina on 4/21/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class WatchListViewCell: UITableViewCell {
    
    public lazy var companyImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "photo")
        return imageView
    }()
    
    public lazy var companyNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Company Name"
        label.numberOfLines = 3
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    public lazy var ratingLabel: UILabel = {
        let label = UILabel()
        label.text = "RATING"
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 16, weight: .black)
        label.textAlignment = .center
        label.textColor = .systemRed
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
        setupCompanyImage()
        setupCompanyNameLabel()
        setupRatingLabel()
    }
    
    public func configureCell(){
        // TODO: complete once the model is ready
    }
    
    private func setupCompanyImage() {
        addSubview(companyImage)
        companyImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            companyImage.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            companyImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 1),
            companyImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1),
            companyImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.6) // companyImage.heightAnchor)
        ])
    }
    
    private func setupCompanyNameLabel() {
        addSubview(companyNameLabel)
        companyNameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            companyNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 70),
            companyNameLabel.leadingAnchor.constraint(equalTo: companyImage.trailingAnchor, constant: 2),
            companyNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 5)
        ])
    }
    
    private func setupRatingLabel(){
        addSubview(ratingLabel)
        ratingLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            ratingLabel.topAnchor.constraint(equalTo: companyNameLabel.bottomAnchor, constant: 8),
            ratingLabel.leadingAnchor.constraint(equalTo: companyNameLabel.leadingAnchor),
            ratingLabel.trailingAnchor.constraint(equalTo: companyNameLabel.trailingAnchor)
        ])
    }
}
