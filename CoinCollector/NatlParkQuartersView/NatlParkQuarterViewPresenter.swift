//
//  NatlParkViewPresenter.swift
//  CoinCollector
//
//  Created by Kendall Jefferson on 1/1/18.
//  Copyright © 2018 Kendall Jefferson. All rights reserved.
//

import Foundation

protocol NatlParkQuarterViewPresentation {
}

public final class NatlParkQuarterViewPresenter: NatlParkQuarterViewPresentation {
    
    private let interactor: AppInteraction
    private let coordinator: AppCoordination
    
    let quarters: [NatlParkQuarter]
    
    init(interactor: AppInteraction, coordinator: AppCoordination) {
        self.interactor = interactor
        self.coordinator = coordinator
        
        quarters = interactor.getNatlParkQuarters()
    }
}
