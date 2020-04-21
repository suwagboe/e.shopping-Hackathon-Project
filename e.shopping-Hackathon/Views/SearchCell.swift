//
//  SearchCell.swift
//  e.shopping-Hackathon
//
//  Created by Pursuit on 4/21/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class SearchCell: UICollectionViewCell {
    
    // name label
    // score label
    // image label
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var companyLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
        
    private var currentCompany: String?
    
    public lazy var ellipseButton: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(systemName: "ellipsis.circle"), for: .normal)
        button.addTarget(self, action: #selector(moreButtonPressed(_:)), for: .touchUpInside)
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
    
     @objc
    private func moreButtonPressed(_ sender: UIButton){
         
         print("button was clicked")
         
         //ToDo: Add action sheet for when the button is pressed.
         
     }
    

    
}
