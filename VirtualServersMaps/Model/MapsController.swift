//  ViewController.swift
//  VirtualServersMaps
//  Created by Mohamed on 11/5/19.
//  Copyright © 2019 Mohamed. All rights reserved.

import UIKit
import GoogleMaps

 class MapsController: UIViewController {

    //    Mark: IBOutlet
    @IBOutlet private weak var mapView: UIView!
    @IBOutlet weak var redView: UIView!
    
    //    Mark: Variable
    var mapView1: GMSMapView?
    
    //    Mark: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GMSServices.provideAPIKey("AIzaSyA48tHCL6g419RsWUO5nUqbM6CTCRmgZWs")
        let camera = GMSCameraPosition.camera(withLatitude: 40.216346, longitude: -101.071565, zoom: 3.1)
        mapView1 = GMSMapView.map(withFrame: mapView.bounds, camera: camera)
        mapView.addSubview(mapView1!)
        redView.layer.cornerRadius = redView.frame.height / 1.95

        //        MARK: Marker
        let markerArray = [
            informationArraySection(latitude: 36.520736 , longitude: -77.646369, title: "San Francisco"),
            informationArraySection(latitude: 38.274807, longitude: -122.890978, title: "North Carollena") ,
            informationArraySection(latitude: 44.361919, longitude: -72.679436, title: "Washington County") ,
            informationArraySection (latitude: 44.979765, longitude: -69.077263, title: "nasmkxz") ,
            informationArraySection(latitude: 32.810192, longitude: -117.096900, title: "San Diego")]
        //        MARK: Add Marker Detalis
        for item in markerArray {
            let marker = GMSMarker()
            marker.position = CLLocationCoordinate2D(latitude: item.latitude, longitude: item.longitude)
            marker.title = item.title
            marker.map = mapView1
            
            let iconView = UINib(nibName: "GreenIcon", bundle: nil).instantiate(withOwner: nil, options: nil).first as? UIView
            iconView?.layer.cornerRadius = iconView!.frame.size.height / 2
            iconView?.layer.borderWidth = 2.0
            iconView?.layer.borderColor = .init(srgbRed: 137/255  , green: 241/255, blue: 66/255, alpha: 1)
            
            marker.iconView = iconView
            marker.groundAnchor = CGPoint(x: 0.5 , y: 0.5)
        }
        

        
        //        MARK: Add PolyLine
        let path = GMSMutablePath()
        path.add(CLLocationCoordinate2D(latitude: 32.810192, longitude: -119.083392))
        path.add(CLLocationCoordinate2D(latitude: 44.979765, longitude: -69.077263))
        let polyline = GMSPolyline(path: path)
        polyline.strokeColor = .init(red:109/255  , green: 194/255, blue: 52/255, alpha: 1)
        polyline.strokeWidth = 5.0
        polyline.map = mapView1
        
        
        let path1 = GMSMutablePath()
        path1.add(CLLocationCoordinate2D(latitude: 38.274807, longitude: -122.890978))
        path1.add(CLLocationCoordinate2D(latitude: 44.979765, longitude: -69.077263))
        let polyline1 = GMSPolyline(path: path1)
        polyline1.strokeColor = .init(red:109/255  , green: 194/255, blue: 52/255, alpha: 1)
        polyline1.strokeWidth = 5.0
        polyline1.map = mapView1
    }
}

