//
//  Cell.swift
//  tTableView_SelectCell
//
//  Created by tyobigoro_i on 2019/11/12.
//  Copyright © 2019 tyobigoro_i. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    @IBOutlet weak var tLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(str: String) {
        tLabel.text = str
    }
    
}
