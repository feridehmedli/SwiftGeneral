//
//  ViewController.swift
//  Mapkit
//
//  Created by Ferid Ehmedli on 08.07.23.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController , MKMapViewDelegate, CLLocationManagerDelegate {
    
    
    @IBOutlet weak var MapView: MKMapView!
    var locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        MapView.delegate = self
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = CLLocationCoordinate2D(latitude: locations[0].coordinate.latitude, longitude: locations[0].coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region = MKCoordinateRegion(center: location, span: span)
        MapView.setRegion(region, animated: true)
    }

}

