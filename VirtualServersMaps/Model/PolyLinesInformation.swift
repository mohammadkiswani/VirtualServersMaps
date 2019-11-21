//
//  PolyLines.swift
//  VirtualServersMaps
//
//  Created by Mohamed on 11/20/19.
//  Copyright © 2019 Mohamed. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

final class polyLineDataBase {
    
    //    Mark: Helper
    var sourceCoordinate : CLLocationCoordinate2D
    var destCoordinate : CLLocationCoordinate2D
    var strokeColer : UIColor
    var strokeWidth : Double
    
    init(sourceCoordinate:CLLocationCoordinate2D ,destCoordinate:CLLocationCoordinate2D , strokeColer : UIColor , strokeWidth : Double){
        self.sourceCoordinate = sourceCoordinate
        self.destCoordinate = destCoordinate
        self.strokeWidth = strokeWidth
        self.strokeColer = strokeColer
         }
    }


