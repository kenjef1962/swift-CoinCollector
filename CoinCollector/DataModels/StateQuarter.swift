//
//  StateQuarter.swift
//  CoinCollector
//
//  Created by Kendall Jefferson on 12/26/17.
//  Copyright © 2017 Kendall Jefferson. All rights reserved.
//

import Foundation

public struct StateQuarter: Decodable {
    let number: Int
    let year: Int
    let state: String
    let stateAbbreviation: String
    let statehoodDate: String
    let releaseDate: String
    let mintageDenver: String
    let mintagePhiladelphia: String
    let mintageTotal: String
    let designElements: String
    let engraver: String
    let additionalInfo: String
    
    
    init?(json: NSDictionary?) {
        self.number = json?["number"] as? Int ?? 0
        self.year = json?["year"] as? Int ?? 0
        self.state = json?["state"] as? String ?? ""
        self.stateAbbreviation = json?["stateAbbreviation"] as? String ?? ""
        self.statehoodDate = json?["statehoodDate"] as? String ?? ""
        self.releaseDate = json?["releaseDate"] as? String ?? ""
        self.mintageDenver = json?["mintageDenver"] as? String ?? ""
        self.mintagePhiladelphia = json?["mintagePhiladelphia"] as? String ?? ""
        self.mintageTotal = json?["mintageTotal"] as? String ?? ""
        self.designElements = json?["designElements"] as? String ?? ""
        self.engraver = json?["engraver"] as? String ?? ""
        self.additionalInfo = json?["additionalInfo"] as? String ?? ""
    }
}
