//
//  StateQuarterViewController.swift
//  CoinCollector
//
//  Created by Kendall Jefferson on 1/1/18.
//  Copyright © 2018 Kendall Jefferson. All rights reserved.
//

import UIKit

class StateQuarterViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let presenter: StateQuarterViewPresentation
    
    init(presenter: StateQuarterViewPresentation) {
        self.presenter = presenter
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let nib = UINib(nibName: "StateQuarterCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "cell")
    }
}

extension StateQuarterViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        let quarters = presenter.getQuarters()
        return quarters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let quarters = presenter.getQuarters()
        return quarters[section + 1999]!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let quarters = presenter.getQuarters()
        let quarter = quarters[indexPath.section + 1999]![indexPath.row]

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! StateQuarterCollectionViewCell
        cell.imageView.image = UIImage(named: "\(quarter.year)_\(quarter.stateAbbreviation)_Proof")
        cell.textLabel.text = quarter.state
        
        return cell
    }
}

extension StateQuarterViewController: UICollectionViewDelegate {
    
}

