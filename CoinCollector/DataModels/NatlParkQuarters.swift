//
//  NatlParkQuarters.swift
//  CoinCollector
//
//  Created by Kendall Jefferson on 1/1/18.
//  Copyright © 2018 Kendall Jefferson. All rights reserved.
//

import Foundation

public struct NatlParkQuarter: Decodable {
    let number: Int
    let year: Int
    let site: String
    let siteDate: String
    let jurisdiction: String
    let jurisdictionAbbreviation: String
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
        self.site = json?["site"] as? String ?? ""
        self.siteDate = json?["siteDate"] as? String ?? ""
        self.jurisdiction = json?["jurisdiction"] as? String ?? ""
        self.jurisdictionAbbreviation = json?["jurisdictionAbbreviation"] as? String ?? ""
        self.releaseDate = json?["releaseDate"] as? String ?? ""
        self.mintageDenver = json?["mintageDenver"] as? String ?? ""
        self.mintagePhiladelphia = json?["mintagePhiladelphia"] as? String ?? ""
        self.mintageTotal = json?["mintageTotal"] as? String ?? ""
        self.designElements = json?["designElements"] as? String ?? ""
        self.engraver = json?["engraver"] as? String ?? ""
        self.additionalInfo = json?["additionalInfo"] as? String ?? ""
    }
}
