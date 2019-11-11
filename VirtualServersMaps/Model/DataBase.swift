//
//  DataBase.swift
//  VirtualServersMaps
//
//  Created by Mohamed on 11/10/19.
//  Copyright © 2019 Mohamed. All rights reserved.
//

import Foundation

final class informationArraySection {
    
    //    Mark: Helper
    var latitude : Double
    var longitude : Double
    var title : String
    
    init(latitude:Double ,longitude:Double , title:String){
        self.latitude = latitude
        self.longitude = longitude
        self.title = title
        
    }
}
