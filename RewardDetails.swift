//
//  RewardDetails.swift
//  FocusFriend4.11
//
//  Created by Madeline on 4/14/17.
//  Copyright © 2017 Madeline. All rights reserved.
//

import UIKit

class RewardDetails: UIStackView {
    
    //Properties
    
    @IBOutlet weak var storeName: UILabel!
    @IBOutlet weak var rewardInfo: UILabel!
    
    @IBOutlet weak var rewardPhoto: UIImageView!
    @IBAction func redeemButton(_ sender: Any) {
    }
  
   //Initialization
    
     override init(frame: CGRect){
        super.init(frame: frame)
        setupButtons()
        
    }
    
    required init(coder: NSCoder){
        super.init(coder: coder)
        setupButtons()
        
    }
    
    
    //Button Action
    
    func buttonTapped(redeemButton: UIButton) {
        print("Button pressed 👍")
    }
    
    //Private Methods 
    
    private func setupButtons(){
        
        let redeemButton = UIButton()
        redeemButton.backgroundColor = UIColor.blue
        redeemButton.translatesAutoresizingMaskIntoConstraints = false
        redeemButton.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        redeemButton.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        
        addArrangedSubview(redeemButton)
    }
    
}
