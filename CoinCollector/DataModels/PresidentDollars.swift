//
//  PresidentDollars.swift
//  CoinCollector
//
//  Created by Kendall Jefferson on 1/1/18.
//  Copyright © 2018 Kendall Jefferson. All rights reserved.
//

import Foundation

public struct PresidentDollar: Decodable {
    let number: Int
    let year: Int
    let president: String
    let presidentNumber: String
    let presidentInOffice: String
    let releaseDate: String
    let mintageDenver: String
    let mintagePhiladelphia: String
    let mintageTotal: String

    init?(json: NSDictionary?) {
        self.number = json?["number"] as? Int ?? 0
        self.year = json?["year"] as? Int ?? 0
        self.presidentNumber = json?["presidentNumber"] as? String ?? ""
        self.president = json?["president"] as? String ?? ""
        self.presidentInOffice = json?["presidentInOffice"] as? String ?? ""
        self.releaseDate = json?["releaseDate"] as? String ?? ""
        self.mintageDenver = json?["mintageDenver"] as? String ?? ""
        self.mintagePhiladelphia = json?["mintagePhiladelphia"] as? String ?? ""
        self.mintageTotal = json?["mintageTotal"] as? String ?? ""
    }
}
