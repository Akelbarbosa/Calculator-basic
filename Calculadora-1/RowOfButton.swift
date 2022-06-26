//
//  RowOfButton.swift
//  Calculadora-1
//
//  Created by Akel Barbosa on 21/06/22.
//  Copyright © 2022 akelbarbosa. All rights reserved.
//

import UIKit

class RowOfButton: UIStackView {

    func setup() {
        backgroundColor = .systemBackground
        translatesAutoresizingMaskIntoConstraints = false
        axis = .horizontal
        distribution = .fillEqually
        spacing = 5
    
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
