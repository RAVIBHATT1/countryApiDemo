//
//  MyTableViewCell.swift
//  countryApiDemo
//
//  Created by Akash Padhiyar on 30/03/19.
//  Copyright © 2019 MyMac. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var MyLabel1: UILabel!
    @IBOutlet weak var MyLabel2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
