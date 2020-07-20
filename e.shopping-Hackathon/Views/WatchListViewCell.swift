//
//  WatchListViewCell.swift
//  e.shopping-Hackathon
//
//  Created by Lilia Yudina on 4/21/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class WatchListViewCell: UITableViewCell {
    
    private var currentCompany: Company!
    
    public lazy var companyImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "house")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .darkGray
        return imageView
    }()
    
    public lazy var companyNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Company Name"
        label.numberOfLines = 3
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        //label.textColor = .darkGray
        return label
    }()
    
    public lazy var ratingImage: UIImageView = {
          let imageView = UIImageView()
        imageView.image = UIImage(named: "FourRating")
          return imageView
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
        setupCompanyNameLabel()
        setupCompanyImage()
        setupRatingImage()
    }
    

        public func configureCell(company: Company) {
            var companyScore = 0
            companyScore = company.getCompanyRating(for: company)
            companyNameLabel.text = "\(company.name)"
            getRatingImage(score: companyScore)
            companyImage.image = UIImage(named: company.name)
        }
        
        private func getRatingImage(score: Int) {
            switch score {
            case 0:
                ratingImage.image = UIImage(named: "ZeroRating")
            case 1:
                ratingImage.image = UIImage(named: "OneRating")
            case 2:
                ratingImage.image = UIImage(named: "TwoRating")
            case 3:
                ratingImage.image = UIImage(named: "ThreeRating")
            case 4:
                ratingImage.image = UIImage(named: "FourRating")
            case 5:
                ratingImage.image = UIImage(named: "FiveRating")
            default:
                ratingImage.image = UIImage(systemName: "􀒊")
            }
        }

    
    private func setupCompanyImage() {
        addSubview(companyImage)
        companyImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            companyImage.topAnchor.constraint(equalTo: companyNameLabel.bottomAnchor, constant: 8),
            companyImage.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -8),
            companyImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
    }
    
    private func setupCompanyNameLabel() {
        addSubview(companyNameLabel)
        companyNameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            companyNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            companyNameLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 8),
            companyNameLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -8)
        ])
    }
    
    private func setupRatingImage(){
        addSubview(ratingImage)
        ratingImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            ratingImage.trailingAnchor.constraint(equalTo: companyImage.leadingAnchor, constant: 8),
            ratingImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            ratingImage.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.35),
            ratingImage.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.35),
            ratingImage.centerYAnchor.constraint(equalTo: companyImage.centerYAnchor)
        ])
    }
}
