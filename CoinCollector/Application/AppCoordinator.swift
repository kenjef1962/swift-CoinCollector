//
//  AppCoordinator.swift
//  CoinCollector
//
//  Created by Kendall Jefferson on 12/26/17.
//  Copyright © 2017 Kendall Jefferson. All rights reserved.
//

import Foundation
import UIKit

protocol AppCoordination {
    func showMainView()

    func showStateQuarterView()
    func showNatlParkQuarterView()
    func showPresidentDollarView()

    func showBasicAlert(title: String, message: String, style: UIAlertController.Style)
}

public final class AppCoordinator: AppCoordination {
    
    private let navController = UINavigationController()
    private let interactor = AppInteractor()
    
    public var initialViewController: UIViewController {
        return navController
    }
    
    func showMainView() {
        let presenter = CoinCollectionViewPresenter(interactor: interactor, coordinator: self)
        let viewController = CoinCollectionViewController(presenter: presenter)
        navController.pushViewController(viewController, animated: true)
    }
    
    func showStateQuarterView() {
        let presenter = StateQuarterViewPresenter(interactor: interactor, coordinator: self)
        let viewController = StateQuarterViewController(presenter: presenter)
        navController.pushViewController(viewController, animated: true)
    }
    
    func showNatlParkQuarterView() {
        let presenter = NatlParkQuarterViewPresenter(interactor: interactor, coordinator: self)
        let viewController = NatlParkQuarterViewController(presenter: presenter)
        navController.pushViewController(viewController, animated: true)
    }
    
    func showPresidentDollarView() {
        let presenter = PresidentDollarViewPresenter(interactor: interactor, coordinator: self)
        let viewController = PresidentDollarViewController(presenter: presenter)
        navController.pushViewController(viewController, animated: true)
    }

    func showBasicAlert(title: String, message: String, style: UIAlertController.Style = .alert) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        let actionOK = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(actionOK)
        
        navController.present(alert, animated: true, completion: nil)
    }
}

