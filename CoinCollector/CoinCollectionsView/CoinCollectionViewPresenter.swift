//
//  CoinCollectionViewPresentation.swift
//  CoinCollector
//
//  Created by Kendall Jefferson on 12/26/17.
//  Copyright © 2017 Kendall Jefferson. All rights reserved.
//

import Foundation

protocol CoinCollectionViewPresentation {
}

public final class CoinCollectionViewPresenter: CoinCollectionViewPresentation {
    
    private let interactor: AppInteraction
    private let coordinator: AppCoordination
    
    let collections: [CoinCollection]
    
    init(interactor: AppInteraction, coordinator: AppCoordination) {
        self.interactor = interactor
        self.coordinator = coordinator
        
        collections = interactor.getCoinCollections()
    }
    
    func showCollection(_ type: CoinCollectionType) {
        switch type {
        case .stateQuarters:
            coordinator.showStateQuarterView()
            break
        case .natlParkQuarters:
            coordinator.showNatlParkQuarterView()
            break
        case .presidentDollars:
            coordinator.showPresidentDollarView()
            break
        }
    }
}
