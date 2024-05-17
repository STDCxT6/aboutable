//
//  TeamDetailViewController.swift
//  aboutable
//
//  Created by STDC_37 on 17/05/2024.
//

import UIKit

class TeamDetailViewController: UIViewController {
    
    @IBOutlet var photoView: UIImageView!
    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var positionLbl: UILabel!
    @IBOutlet var experienceLbl: UILabel!
    @IBOutlet var educationLbl: UILabel!
    var selectedTeaMember: TeaMember?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoView.image = selectedTeaMember?.bgPhoto
        nameLbl.text = selectedTeaMember?.name
        positionLbl.text = selectedTeaMember?.position
        experienceLbl.text = selectedTeaMember?.experience
        educationLbl.text = selectedTeaMember?.education
    }

}
