//
//  NatlParkQuarterViewController.swift
//  CoinCollector
//
//  Created by Kendall Jefferson on 1/1/18.
//  Copyright © 2018 Kendall Jefferson. All rights reserved.
//

import UIKit

class NatlParkQuarterViewController: UIViewController {

    let presenter: NatlParkQuarterViewPresentation
    
    init(presenter: NatlParkQuarterViewPresentation) {
        self.presenter = presenter
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
