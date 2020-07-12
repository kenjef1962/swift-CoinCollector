//
//  PresidentDollarViewPresenter.swift
//  CoinCollector
//
//  Created by Kendall Jefferson on 1/1/18.
//  Copyright © 2018 Kendall Jefferson. All rights reserved.
//

import Foundation

protocol PresidentDollarViewPresentation {
}

public final class PresidentDollarViewPresenter: PresidentDollarViewPresentation {
    
    private let interactor: AppInteraction
    private let coordinator: AppCoordination
    
    let dollars: [PresidentDollar]
    
    init(interactor: AppInteraction, coordinator: AppCoordination) {
        self.interactor = interactor
        self.coordinator = coordinator
        
        dollars = interactor.getPresidentDollars()
    }
}

