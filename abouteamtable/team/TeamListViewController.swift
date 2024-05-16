//
//  TeamListViewController.swift
//  abouteam2
//
//  Created by STDC_37 on 16/05/2024.
//

import UIKit

class TeamListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    var tableData: [TeaMember] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableData = TeaMember.sampleTeamData()
    }
    
     func numberOfSections(in tableView: UITableView) -> Int {
         1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         tableData.count
    }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let teamCell = tableView.dequeueReusableCell(withIdentifier: "member", for: indexPath) as! TeamTableViewCell
         let teamMember = tableData[ indexPath.row]
         teamCell.photoView.image = teamMember.photo
         teamCell.nameLbl.text = teamMember.name
         teamCell.positionLbl.text = teamMember.position
         return teamCell
    }

}
