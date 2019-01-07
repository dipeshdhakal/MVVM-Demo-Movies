//
//  Item.swift
//  MVVM-Demo
//
//  Created by Dipesh Dhakal on 1/16/18.
//  Copyright © 2018 Dipesh Dhakal. All rights reserved.
//

import Foundation
import ObjectMapper


/// Model for objet Movie or Tv Show containes all info to show in list or details
class ItemObject: Mappable{
    
    var id              : Int?
    var title           : String?
    var vote_average    : Float?
    var overview        : String?
    var release_date    : String?
    var poster_path     : String?
    var backdrop_path   : String?
    var genres          : [Int]?
    var name            : String?
    var media_type      : String?
    var first_air_date  : String?
    

    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id    <- map["id"]
        title    <- map["title"]
        vote_average    <- map["vote_average"]
        overview    <- map["overview"]
        release_date    <- map["release_date"]
        poster_path    <- map["poster_path"]
        backdrop_path    <- map["backdrop_path"]
        genres    <- map["genres"]
        name    <- map["name"]
        media_type    <- map["media_type"]
        first_air_date    <- map["first_air_date"]
    }
}
