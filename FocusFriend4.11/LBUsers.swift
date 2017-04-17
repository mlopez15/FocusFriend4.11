//
//  LBUsers.swift
//  FocusFriend4.11
//
//  Created by Jack Dardis on 4/17/17.
//  Copyright © 2017 Madeline. All rights reserved.
//

import UIKit

class LBUser{
    
    var name: String
    var score: String
    
    init?(name: String, score: String){
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        /* The score must be 0 or above
        guard (score >= 0) else {
            return nil
        }
         */
        
        self.name = name
        self.score = score
        
    }
}
