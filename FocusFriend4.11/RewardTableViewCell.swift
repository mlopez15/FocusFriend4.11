//
//  RewardTableViewCell.swift
//  FocusFriend4.11
//
//  Created by Madeline on 4/12/17.
//  Copyright © 2017 Madeline. All rights reserved.
//

import UIKit

class RewardTableViewCell: UITableViewCell {
    
    //ML: Properties
    @IBOutlet weak var storeLabel: UILabel!
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var pointsLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
