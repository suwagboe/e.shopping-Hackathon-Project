//
//  SearchCell.swift
//  e.shopping-Hackathon
//
//  Created by Pursuit on 4/21/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit
import NetworkHelper
import ImageKit
import FirebaseStorage



class SearchCell: UICollectionViewCell {
       var companyPhotoURL : URL?
  
    @IBOutlet weak var companyImage: UIImageView!
    
    @IBOutlet weak var companyLabel: UILabel!
    
    @IBOutlet weak var scoreImage: UIImageView!
    
    public func configureCell(with company: Company){
        
        var companyScore = 0
        companyLabel.text = company.name
        companyScore = company.getCompanyRating(for: company)
    
        scoreImage.image = UIImage(named: getRatingImage(score: companyScore))
        companyImage.image = UIImage(named: company.name)
   /*
        StorageService.shared.fetchPhoto(filename: "gs://fair-and-square.appspot.com/Nestle.jpg") { (result) in
          switch result {
          case .failure(let error):
             print("check inside of the cell in the getPhoto function: \(error)")
          case .success(let url):
             // self.companyPhotoURL = url
            //  let stringURL
            self.companyImage.getImage(with: url.absoluteString) { [weak self]
                (result) in
                switch result{
                case .failure(let error):
                    DispatchQueue.main.async {
            self?.companyImage.image = UIImage(systemName: "paperplane")
                        print("error: \(error)")
                    }
                case .success(let image):
                    DispatchQueue.main.async {
                        self?.companyImage.image = image
                    }
                }
            }
          }
      }
         
        */
        
        
        
    }

    
    
    private func getRatingImage(score: Int) -> String {
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
