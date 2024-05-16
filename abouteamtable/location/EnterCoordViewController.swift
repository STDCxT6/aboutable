//
//  EnterCoordViewController.swift
//  abouteam
//
//  Created by STDC_37 on 14/05/2024.
//

import UIKit
import MapKit

class EnterCoordViewController: UIViewController {

    @IBOutlet var latitudeTextField: UITextField!
    @IBOutlet var longitudeTextField: UITextField!
//    var latituteText: String?
//    var longitudeText: String?
    var newCoordinate: CLLocationCoordinate2D?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//     MARK: - Navigation

//     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let latituteText = latitudeTextField, let longitudeText = longitudeTextField, let latitude = Double(latitudeTextField.text!), let longitude = Double(longitudeTextField.text!) {
            newCoordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        }
    }
    

}
