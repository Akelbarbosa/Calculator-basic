//
//  stackViewDisplayOperation.swift
//  Calculadora-1
//
//  Created by Akel Barbosa on 22/06/22.
//  Copyright © 2022 akelbarbosa. All rights reserved.
//

import UIKit

class stackViewDisplayOperation: UIStackView {
    func setup() {
         
        backgroundColor = .systemBackground
        translatesAutoresizingMaskIntoConstraints = false

    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
