//
//  FieldOfOperationLabel.swift
//  Calculadora-1
//
//  Created by Akel Barbosa on 22/06/22.
//  Copyright © 2022 akelbarbosa. All rights reserved.
//

import UIKit

class FieldOfOperationLabel: UILabel {
    func setup(){
        backgroundColor = .systemBackground

        textAlignment = .right
        backgroundColor = .systemBackground
        font = UIFont.systemFont(ofSize: 50)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        
    }
    func setOperations(character: String) {
        text = character
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
