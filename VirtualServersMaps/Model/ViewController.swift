//  ViewController.swift
//  VirtualServersMaps
//  Created by Mohamed on 11/5/19.
//  Copyright © 2019 Mohamed. All rights reserved.

import UIKit
import GoogleMaps

final class ViewController: UIViewController {
    
    @IBOutlet private weak var mapView: UIView!
    @IBOutlet private weak var redView: UILabel!
    
    var mapView1: GMSMapView?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GMSServices.provideAPIKey("AIzaSyA48tHCL6g419RsWUO5nUqbM6CTCRmgZWs")
        let camera = GMSCameraPosition.camera(withLatitude: 40.216346, longitude: -101.071565, zoom: 3.1)
        
        redView.layer.cornerRadius = redView.frame.size.height / 2
        redView.layer.zPosition = 0

        mapView1 = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView1
        
        let markerArray = [
            informationArraySection(latitude: 36.520736 , longitude: -77.646369, title: "San Francisco"),
            informationArraySection(latitude: 38.274807, longitude: -122.890978, title: "North Carollena") ,
            informationArraySection(latitude: 44.361919, longitude: -72.679436, title: "Washington County") ,
            informationArraySection (latitude: 44.979765, longitude: -69.077263, title: "nasmkxz") ,
            informationArraySection(latitude: 35.332247, longitude: -119.083392, title: "Los Angeles") ]

        for item in markerArray {
            let marker = GMSMarker()
            marker.position = CLLocationCoordinate2D(latitude: item.latitude, longitude: item.longitude)
            marker.title = item.title
            marker.map = mapView1
            
        }
    }
}

