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
    var newCoordinate: CLLocationCoordinate2D?
    
    /// Use to save data to local storage
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        latitudeTextField.text = defaults.object(forKey: "latitude") as? String
        longitudeTextField.text = defaults.object(forKey: "longitude") as? String
        
    }
    
//     MARK: - Navigation

//     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let latitudeText = latitudeTextField, let longitudeText = longitudeTextField, let latitude = Double(latitudeTextField.text!), let longitude = Double(longitudeTextField.text!) {
            defaults.setValue(latitudeText.text, forKey: "latitude")
            defaults.setValue(longitudeText.text, forKey: "longitude")
            newCoordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        }
    }
    

}
