//
//  MoviesRepository.swift
//  MVVM-Demo
//
//  Created by Dipesh Dhakal on 1/16/18.
//  Copyright © 2018 Dipesh Dhakal. All rights reserved.
//

import Foundation
import AlamofireObjectMapper
import Alamofire

enum  ItemDataResponse {
    case success(result: ItemsObjectList)
    case failure
}

class MoviesRepsository {
    
    func getMovies(listType: ListType, page:Int, completion: @escaping (ItemDataResponse) -> Void ) {
        let endPoint = setEndPoint(type: listType)
        
        let url = AppConstants.baseUrl + endPoint.rawValue + AppConstants.keyPath + AppConstants.apiKey
        
        Alamofire.request(url, method: .get, parameters: [:], encoding: JSONEncoding.default, headers: [:]).responseObject { (response: DataResponse<ItemsObjectList>) in
            let eventResponse = response.result.value
            print(response)
            completion(.success(result: eventResponse!))
        }
    }
    
    
    private func setEndPoint(type: ListType) -> MoviesEndPoint {
        var endPoint: MoviesEndPoint
        switch type {
        case .Popular:
            endPoint = .getPopular
        case .TopRate:
            endPoint = .getTopRates
        case .Upcoming:
            endPoint = .getUpcomings
        }
        return endPoint
    }
    
}
