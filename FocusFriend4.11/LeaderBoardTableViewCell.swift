//
//  LeaderBoardTableViewCell.swift
//  FocusFriend4.11
//
//  Created by Jack Dardis on 4/17/17.
//  Copyright © 2017 Madeline. All rights reserved.
//

import UIKit

class LeaderBoardTableViewCell: UITableViewCell {
    
    
    //ML: Properties
    
    @IBOutlet weak var UserName: UILabel!
    @IBOutlet weak var UserScore: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
