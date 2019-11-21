//  ViewController.swift
//  VirtualServersMaps
//  Created by Mohamed on 11/5/19.
//  Copyright © 2019 Mohamed. All rights reserved.

import UIKit
import GoogleMaps

final class MapsController: UIViewController {
    
    //    Mark: Variable
    var mapView1: GMSMapView?

    //    Mark: IBOutlet
    @IBOutlet private weak var mapView: UIView!
    @IBOutlet weak var redView: UIView!
        
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
        let arr = [polyLineDataBase(sourceCoordinate: CLLocationCoordinate2D(latitude: 32.810192, longitude: -119.083392),destCoordinate: CLLocationCoordinate2D(latitude: 44.979765, longitude: -69.077263) , strokeColer: .init(red:109/255,green: 194/255, blue: 52/255, alpha: 1) , strokeWidth: 5.0 ),polyLineDataBase(sourceCoordinate: CLLocationCoordinate2D(latitude: 38.274807, longitude: -122.890978), destCoordinate: CLLocationCoordinate2D(latitude: 44.979765, longitude: -69.077263) , strokeColer: .init(red:109/255  , green: 194/255,blue: 52/255, alpha: 1) , strokeWidth: 5.0 )]

        for item in arr {
            let path = GMSMutablePath()
            path.add(item.sourceCoordinate)
            path.add(item.destCoordinate)
            let polyline = GMSPolyline(path: path)
            polyline.strokeColor = item.strokeColer
            polyline.strokeWidth = CGFloat(item.strokeWidth)
            polyline.geodesic = true
            polyline.map = mapView1
        }
    }
}

