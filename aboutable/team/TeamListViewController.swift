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
    
    /// Method 2: Uncomment this only when using with method 2
    // func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //     self.performSegue(withIdentifier: "toDetail", sender: self)
    // }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "toDetail") {
            
            /// Method 1: Get selected cell using selected cell.
            /// Note: This method only works if the cell is directly connected to next view.
            /// It does not require the use of didSelectRowAt
            guard let detailsVC = segue.destination as? TeamDetailViewController,
                let selectedCell = sender as? TeamTableViewCell,
                let indexPath = tableView.indexPath(for: selectedCell)
            else { return }
            let selectedRow = indexPath.row
            
            /// Method 2: Get selected row using indexPathForSelectingRow
            /// Note: This method utilise the didSelectRowAt function
            /// and make sure the identifier is properly named
            // let detailsVC = segue.destination as! TeamDetailViewController
            // let selectedRow = tableView.indexPathForSelectedRow!.row
            
            // Assign value to target VC variable
            detailsVC.selectedTeaMember = tableData[selectedRow]
        }
    }


}
