//
//  MealTableViewCell.swift
//  MealDemo
//
//  Created by student on 2018/12/17.
//  Copyright © 2018年 BlueStar. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    
    @IBOutlet weak var mealImage: UIImageView!
    @IBOutlet weak var mealName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
