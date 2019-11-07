//
//  ViewController.swift
//  VirtualServersMaps
//
//  Created by Mohamed on 11/5/19.
//  Copyright © 2019 Mohamed. All rights reserved.
//

import UIKit
import GoogleMaps

final class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GMSServices.provideAPIKey("AIzaSyA48tHCL6g419RsWUO5nUqbM6CTCRmgZWs")
        let camera = GMSCameraPosition.camera(withLatitude: 40.216346, longitude: -101.071565, zoom: 3.1)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 40.216346, longitude: -101.071565)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView


    }
    
}

