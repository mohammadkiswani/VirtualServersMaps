//
//  PolyLines.swift
//  VirtualServersMaps
//
//  Created by Mohamed on 11/20/19.
//  Copyright © 2019 Mohamed. All rights reserved.
//

import Foundation
final class polyLine {
    
    var latitude : Double
    var longitude : Double
    var strokeWidth :Double
    var strokeColor :Double
    
    init(latitude:Double ,longitude:Double ,strokeWidth:Double , strokeColor:Double ){
        self.latitude = latitude
        self.longitude = longitude
        self.strokeWidth = strokeWidth
        self.strokeColor = strokeColor
    }
}
