//
//  Buttons.swift
//  Calculadora-1
//
//  Created by Akel Barbosa on 21/06/22.
//  Copyright © 2022 akelbarbosa. All rights reserved.
//

import UIKit

class Buttons: UIButton {
    var valueButton: String?
    
    func setup() {
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        layer.cornerRadius = 30
        layer.borderWidth = 1
        layer.borderColor = UIColor.gray.cgColor
        backgroundColor = .gray
        translatesAutoresizingMaskIntoConstraints = false
        
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        

    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
    
    func setTitleButon(text : String) {
        setTitle(text, for: .normal)
    }
    
    

}


