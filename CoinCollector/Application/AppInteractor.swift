//
//  AppInteractor.swift
//  CoinCollector
//
//  Created by Kendall Jefferson on 12/26/17.
//  Copyright © 2017 Kendall Jefferson. All rights reserved.
//

import Foundation

protocol AppInteraction {
    func getCoinCollections() -> [CoinCollection]
    func getStateQuarters() -> [StateQuarter]
    func getNatlParkQuarters() -> [NatlParkQuarter]
    func getPresidentDollars() -> [PresidentDollar]
}

public final class AppInteractor: AppInteraction {
    let dataManager = DataManager()
    
    func getCoinCollections() -> [CoinCollection] {
        return dataManager.getCoinCollections()
    }
    
    func getStateQuarters() -> [StateQuarter] {
        return dataManager.getStateQuarters()
    }

    func getNatlParkQuarters() -> [NatlParkQuarter] {
        return dataManager.getNatlParkQuarters()
    }
    
    func getPresidentDollars() -> [PresidentDollar] {
        return dataManager.getPresidentDollars()
    }
}

