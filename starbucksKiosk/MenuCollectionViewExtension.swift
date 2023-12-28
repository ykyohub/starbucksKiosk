//
//  CollectionViewExtension.swift
//  starbucksKiosk
//
//  Created by 영현 on 12/27/23.
//

import Foundation
import UIKit

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = MenuCollectionView.dequeueReusableCell(withReuseIdentifier: "menuCollectionViewCell", for: indexPath)
        
        return cell
    }
    
    
}
