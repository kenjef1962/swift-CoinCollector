//
//  DataManager.swift
//  CoinCollector
//
//  Created by Kendall Jefferson on 12/26/17.
//  Copyright © 2017 Kendall Jefferson. All rights reserved.
//

import Foundation

class DataManager {
    
    private var coinCollections: [CoinCollection] = []
    private var stateQuarters: [StateQuarter] = []
    private var natlParkQuarters: [NatlParkQuarter] = []
    private var presidentDollars: [PresidentDollar] = []

    private func loadStateQuarters() -> [StateQuarter] {
        var quarters: [StateQuarter] = []
        
        guard let url = Bundle.main.url(forResource: "StateQuarters", withExtension: "json") else { return quarters }
        guard let data = NSData(contentsOf: url) else { return quarters }
        guard let jsonObject = try? JSONSerialization.jsonObject(with: data as Data, options: .allowFragments) else { return quarters }
        guard let jsonDict = jsonObject as? NSDictionary else { return quarters }
        guard let jsonArray = jsonDict["Quarters"] as? NSArray else { return quarters }
        for json in jsonArray {
            if let quarter = StateQuarter(json: json as? NSDictionary) {
                quarters.append(quarter)
            }
        }

        return quarters
    }

    public func getCoinCollections() -> [CoinCollection] {
        if coinCollections.isEmpty {
        }
        
        return coinCollections
    }

    public func getStateQuarters() -> [StateQuarter] {
        if stateQuarters.isEmpty {
            stateQuarters = loadStateQuarters()
        }
        
        return stateQuarters
    }

    public func getNatlParkQuarters() -> [NatlParkQuarter] {
        if natlParkQuarters.isEmpty {
        }
        
        return natlParkQuarters
    }

    public func getPresidentDollars() -> [PresidentDollar] {
        if presidentDollars.isEmpty {
        }
        
        return presidentDollars
    }
}
