//
//  TvShowsViewModel.swift
//  MVVM-Demo
//
//  Created by Dipesh Dhakal on 1/17/18.
//  Copyright © 2018 Dipesh Dhakal. All rights reserved.
//

import Foundation

class TvShowViewModel {
    
    var dataItems:[ItemsObjectList] = []
    var repository: TvShowsRepsository?
    weak var delegate: ViewModelDelegate?
    
    init() {
        repository = TvShowsRepsository()
    }
    
    func getTvShows( type: ListType) {
        guard let repo = repository else { return }
        
        repo.getTvShows(listType: type, page: 0) { [weak self](response) in
            guard let strongSelf = self else { return }
            
            switch response {
            case .success(let result):
                result.itemType = type
                strongSelf.dataItems.append(result)
                strongSelf.delegate?.reloadTable(type: strongSelf.dataItems.count - 1)
            case.failure:
                break
            }
        }
    }
}
