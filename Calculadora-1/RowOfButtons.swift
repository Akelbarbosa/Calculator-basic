//
//  RowOfButtons.swift
//  Calculadora-1
//
//  Created by Akel Barbosa on 21/06/22.
//  Copyright © 2022 akelbarbosa. All rights reserved.
//

import UIKit

class RowOfButtons: UICollectionView {


}

extension RowOfButtons: UIViewController, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}
