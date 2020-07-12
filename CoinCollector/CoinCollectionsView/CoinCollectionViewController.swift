//
//  CoinCollectionViewController.swift
//  CoinCollector
//
//  Created by Kendall Jefferson on 1/1/18.
//  Copyright © 2018 Kendall Jefferson. All rights reserved.
//

import UIKit

class CoinCollectionViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let presenter: CoinCollectionViewPresenter
    
    init(presenter: CoinCollectionViewPresenter) {
        self.presenter = presenter
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "CoinCollectionTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cell")
    }
}

extension CoinCollectionViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CoinCollectionTableViewCell
        
        switch indexPath.row {
        case 0:
            cell.frontImageView?.image = UIImage(named: "Quarter_Proof")
            cell.backImageView?.image = UIImage(named: "1999_DE_Proof")
            cell.titleLabel?.text = "State / Territory Quarters"
            cell.subtitleLabel?.text = "1999 - 2009"
            break
        case 1:
            cell.frontImageView?.image = UIImage(named: "Quarter_Proof")
            cell.backImageView?.image = UIImage(named: "2010_WY_Proof")
            cell.titleLabel?.text = "America the Beautiful Quarters"
            cell.subtitleLabel?.text = "2010 - 2021"
            break
        case 2:
            cell.frontImageView?.image = UIImage(named: "2007_George_Washington")
            cell.backImageView?.image = UIImage(named: "Dollar_Proof")
            cell.titleLabel?.text = "Presidential Dollars"
            cell.subtitleLabel?.text = "2007 - 2016"
            break
        default:
            break
        }
        
        return cell
    }
}

extension CoinCollectionViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let type = CoinCollectionType(rawValue: indexPath.row) {
            presenter.showCollection(type)
        }
    }
}

