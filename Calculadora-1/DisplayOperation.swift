//
//  DisplayOperaion.swift
//  Calculadora-1
//
//  Created by Akel Barbosa on 21/06/22.
//  Copyright © 2022 akelbarbosa. All rights reserved.
//

import UIKit

class DisplayOperation: UIStackView {
    
    private let rowOfButton: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalCentering
        stackView.backgroundColor = .orange
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.layer.borderWidth = 1
        stackView.layer.borderColor = UIColor.black.cgColor
        
       
        NSLayoutConstraint.activate([
            stackView.heightAnchor.constraint(equalToConstant: 100),

        ])
        
        return stackView
    }()

    func setup() {
        axis = .vertical
        backgroundColor = .white
        distribution = .fillProportionally
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

