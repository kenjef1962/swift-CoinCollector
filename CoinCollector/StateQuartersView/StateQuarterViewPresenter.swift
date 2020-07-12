//

//  StateQuarterViewPresenter.swift
//  CoinCollector
//
//  Created by Kendall Jefferson on 1/1/18.
//  Copyright © 2018 Kendall Jefferson. All rights reserved.
//

import Foundation

protocol StateQuarterViewPresentation {
    func getQuarters() -> [Int: [StateQuarter]]
}

public final class StateQuarterViewPresenter: StateQuarterViewPresentation {
    
    private let interactor: AppInteraction
    private let coordinator: AppCoordination
    
    private var quarters: [Int: [StateQuarter]] = [:]
    
    init(interactor: AppInteraction, coordinator: AppCoordination) {
        self.interactor = interactor
        self.coordinator = coordinator
        
        quarters = getQuarters()
    }
    
    func getQuarters() -> [Int: [StateQuarter]] {
    
        if quarters.isEmpty {
            let stateQuarters = interactor.getStateQuarters()
            
            for stateQuarter in stateQuarters {
                if var yearQuarters = quarters[stateQuarter.year] {
                    yearQuarters.append(stateQuarter)
                    quarters[stateQuarter.year] = yearQuarters
                }
                else {
                    quarters[stateQuarter.year] = [stateQuarter]
                }
            }
        }
        
        return quarters
    }
}
