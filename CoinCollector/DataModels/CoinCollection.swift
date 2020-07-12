//
//  CoinCollection.swift
//  CoinCollector
//
//  Created by Kendall Jefferson on 1/1/18.
//  Copyright © 2018 Kendall Jefferson. All rights reserved.
//

import Foundation

public enum CoinCollectionType: Int {
    case stateQuarters
    case natlParkQuarters
    case presidentDollars
}

public struct CoinCollection {
    let type: CoinCollectionType
    let title: String
    let years: String
    let additionalInfo: String
//
//    init?(json: NSDictionary?) {
//    }
}
