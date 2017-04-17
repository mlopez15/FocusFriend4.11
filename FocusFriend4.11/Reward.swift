//
//  Reward.swift
//  FocusFriend4.11
//
//  Created by Madeline on 4/14/17.
//  Copyright © 2017 Madeline. All rights reserved.
//

import UIKit

class Reward {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var points: String
    
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, points: String) {
        
        // The name must not be empty
        /*guard !name.isEmpty else {
            return nil
        }
        
        // The points must be greater than zero
        guard (points.characters.count > 0) else {
            return nil
        }*/
        
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.points = points
        
    }
    
 
}
