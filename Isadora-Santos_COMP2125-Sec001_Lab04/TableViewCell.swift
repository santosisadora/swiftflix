//
//  TableViewCell.swift
//  Isadora-Santos_COMP2125-Sec001_Lab04
//
//  Created by user202443 on 11/17/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelTitle: UILabel!
    
    
    @IBOutlet weak var labelYear: UILabel!
    
    @IBOutlet weak var imageMovie: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
