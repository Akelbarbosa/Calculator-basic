//
//  ViewController.swift
//  Calculadora-1
//
//  Created by Akel Barbosa on 21/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stackViewButtons = ContainerOfButtons(frame: CGRect())
        
        view.addSubview(stackViewButtons)
  
        
        NSLayoutConstraint.activate([
            stackViewButtons.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackViewButtons.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackViewButtons.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            stackViewButtons.heightAnchor.constraint(equalToConstant: 530),

            
        ])
        
    }
}

