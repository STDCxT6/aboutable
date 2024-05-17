//
//  TeamTableViewCell.swift
//  abouteam2
//
//  Created by STDC_37 on 16/05/2024.
//

import UIKit

class TeamTableViewCell: UITableViewCell {

    @IBOutlet var photoView: UIImageView!
    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var positionLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
