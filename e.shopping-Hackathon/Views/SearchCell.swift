//
//  SearchCell.swift
//  e.shopping-Hackathon
//
//  Created by Pursuit on 4/21/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit
import FirebaseStorage

class SearchCell: UICollectionViewCell {
  
    @IBOutlet weak var companyImage: UIImageView!
    
    @IBOutlet weak var companyLabel: UILabel!
    
    @IBOutlet weak var scoreImage: UIImageView!
        
    //private var currentCompany: String?
    
    /*
         public func configureCell(company: Company) {
     //        public func configureCell() {
                 var companyScore = 0
                 companyScore = company.getCompanyRating(for: company)
                 companyNameLabel.text = "\(company.name)"
                 getRatingImage(score: companyScore)
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
     */
    
  //  var selected: Company?
    
    public func configureCell(with company: Company){
        var companyScore = 0

        companyLabel.text = company.name
        companyScore = company.getCompanyRating(for: company)
    

        scoreImage.image = UIImage(named: getRatingImage(score: companyScore))

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

    
}
