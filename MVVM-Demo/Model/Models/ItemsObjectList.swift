//
//  ItemsObjectList.swift
//  MVVM-Demo
//
//  Created by Dipesh Dhakal on 1/17/18.
//  Copyright © 2018 Dipesh Dhakal. All rights reserved.
//

import Foundation
import ObjectMapper
/**
 This Model have objets for views and all data about movies and tv shows
 */
class ItemsObjectList : Mappable {
    
    var total_pages    : Int?
    var total_results  : Int?
    var results        : [ItemObject]?
    var itemType : ListType = .Popular
    
    required init?(map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        total_pages    <- map["total_pages"]
        results         <- map["results"]
        results      <- map["results"]
       
    }

}
