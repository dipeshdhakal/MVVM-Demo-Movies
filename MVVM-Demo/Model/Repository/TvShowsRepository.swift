//
//  TvShowsRepository.swift
//  MVVM-Demo
//
//  Created by Dipesh Dhakal on 1/17/18.
//  Copyright © 2018 Dipesh Dhakal. All rights reserved.
//

import Foundation
import AlamofireObjectMapper
import Alamofire

class TvShowsRepsository {
    
    func getTvShows(listType: ListType, page:Int, completion: @escaping (ItemDataResponse) -> Void ) {
        let endPoint = setEndPoint(type: listType)
        let url = AppConstants.baseUrl + endPoint.rawValue + AppConstants.keyPath + AppConstants.apiKey
        Alamofire.request(url, method: .get, parameters: [:], encoding: JSONEncoding.default, headers: [:]).responseObject { (response: DataResponse<ItemsObjectList>) in
            let eventResponse = response.result.value
            print(response)
            completion(.success(result: eventResponse!))
        }
    }
    
    
    private func setEndPoint(type: ListType) -> TvShowsEndPoint {
        var endPoint: TvShowsEndPoint
        switch type {
        case .Popular:
            endPoint = .getPopularTv
        case .TopRate:
            endPoint = .getTopRatesTv
        case .Upcoming:
            endPoint = .getUpcomingsTv
        }
        return endPoint
    } 
}
