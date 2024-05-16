//
//  MapViewController.swift
//  abouteam
//
//  Created by STDC_37 on 14/05/2024.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindNewLocation(segue: UIStoryboardSegue) {
        if let sourceViewController = segue.source as? EnterCoordViewController, let newCoordinate = sourceViewController.newCoordinate {
            map.setRegion(MKCoordinateRegion(center: newCoordinate, span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)), animated: true)
        }
    }
}
