//
//  ContainerOfButtons.swift
//  Calculadora-1
//
//  Created by Akel Barbosa on 21/06/22.
//  Copyright © 2022 akelbarbosa. All rights reserved.
//

import UIKit

class ContainerOfButtons: UIStackView {
    
    var buttonPressedOperation: UIButton?
    var porcentaje = false
    var numberInDisplay = "0"
    var numberForDefault: Bool = false
    var term1: Float?
    var term2: Float?
    var termsToOperate: [Float] = []
    
    enum operationType {
        case add, sustaction, multi, divition
    }
    var opetationToMake: operationType?
    
    let displayOperationLabel = FieldOfOperationLabel(frame: CGRect())
    let rowOne = RowOfButton(frame: CGRect())
    let rowTwo = RowOfButton(frame: CGRect())
    let rowThree = RowOfButton(frame: CGRect())
    let rowFour = RowOfButton(frame: CGRect())
    let rowFive = RowOfButton(frame: CGRect())
    let buttonAc = Buttons(frame: CGRect())
    let buttonZero = Buttons(frame: CGRect(x: 0, y: 0, width: 250, height: 100))
    
    func setup() {
        translatesAutoresizingMaskIntoConstraints = false
        axis = .vertical
        spacing = 5
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        
        
        addSubview(displayOperationLabel)
        addSubview(rowOne)
        addSubview(rowTwo)
        addSubview(rowThree)
        addSubview(rowFour)
        addSubview(rowFive)


        
        
        
        NSLayoutConstraint.activate([
            
            rowFive.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            rowFive.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            rowFive.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            rowFive.heightAnchor.constraint(equalToConstant: 100),
            
            rowFour.bottomAnchor.constraint(equalTo: rowFive.topAnchor, constant: -5),
            rowFour.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            rowFour.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            rowFour.heightAnchor.constraint(equalToConstant: 100),
            
            rowThree.bottomAnchor.constraint(equalTo: rowFour.topAnchor, constant: -5),
            rowThree.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            rowThree.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            rowThree.heightAnchor.constraint(equalToConstant: 100),
            
            rowTwo.bottomAnchor.constraint(equalTo: rowThree.topAnchor, constant: -5),
            rowTwo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            rowTwo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            rowTwo.heightAnchor.constraint(equalToConstant: 100),
            
            rowOne.bottomAnchor.constraint(equalTo: rowTwo.topAnchor, constant: -5),
            rowOne.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            rowOne.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            rowOne.heightAnchor.constraint(equalToConstant: 100),
            
            displayOperationLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            displayOperationLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            displayOperationLabel.heightAnchor.constraint(equalToConstant: 80),
            displayOperationLabel.bottomAnchor.constraint(equalTo: rowOne.topAnchor),
    
        ])
        
        
        
        displayOperationLabel.text = numberInDisplay
        buttonAc.setTitleButon(text: "AC")
        rowOne.addArrangedSubview(buttonAc)
        buttonAc.addTarget(self, action: #selector(showInDisplay(_:)), for: .touchUpInside)
        
        
        ["⁺/₋", "%", "÷"].forEach{ symbol in
            let button = Buttons(frame: CGRect())
            
          
            button.setTitleButon(text: symbol)

            
            button.valueButton = symbol
            button.addTarget(self, action: #selector(showInDisplay(_:)), for: .touchUpInside)
            rowOne.addArrangedSubview(button)
            
        }
        
        ["7", "8", "9", "×"].forEach{ symbol in
            let button = Buttons(frame: CGRect())
            button.setTitleButon(text: symbol)
            button.valueButton = symbol
            button.addTarget(self, action: #selector(showInDisplay(_:)), for: .touchUpInside)
            rowTwo.addArrangedSubview(button)
            
        }
        
        ["4", "5", "6", "-"].forEach{ symbol in
            let button = Buttons(frame: CGRect())
            button.setTitleButon(text: symbol)
            button.valueButton = symbol
            button.addTarget(self, action: #selector(showInDisplay(_:)), for: .touchUpInside)
            rowThree.addArrangedSubview(button)
            
        }
        
        ["1", "2", "3", "+"].forEach{ symbol in
            let button = Buttons(frame: CGRect())
            button.setTitleButon(text: symbol)
            button.valueButton = symbol
            button.addTarget(self, action: #selector(showInDisplay(_:)), for: .touchUpInside)
            rowFour.addArrangedSubview(button)
            
        }
        
        buttonZero.setTitleButon(text: "0")
        rowFive.addArrangedSubview(buttonZero)
        [ ".","="].forEach { symbol in
            let button = Buttons(frame: CGRect())
            button.setTitleButon(text: symbol)
            button.valueButton = symbol
            button.addTarget(self, action: #selector(showInDisplay(_:)), for: .touchUpInside)
            rowFive.addArrangedSubview(button)
        }
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func showInDisplay(_ sender: Buttons) {
        
        activateButtonOperate(active: false)
        let text = sender.titleLabel?.text ?? "0"
        
        activateButtonOperate(active: false)
        switch text {
            case "AC":
                numberInDisplay = "0"
                termsToOperate = []
                displayOperationLabel.text = numberInDisplay
                opetationToMake = nil
            porcentaje = false
            case "C":
                numberInDisplay = "0"
                chageToTextButtonAC(character:"AC")
                termsToOperate = []
                opetationToMake = nil
                displayOperationLabel.text = numberInDisplay
      
                porcentaje = false
 
                
        case "⁺/₋":
            guard numberInDisplay == "0" else {
                numberInDisplay.insert("-", at: numberInDisplay.startIndex)
                displayOperationLabel.text = numberInDisplay
                return
            }
            
        case "%":
            guard (numberInDisplay == "0" || opetationToMake == nil) else {
    
                if (opetationToMake == .add || opetationToMake == .sustaction) {
                    porcentaje = true
                }
               
                return
            }
            
            
            case "1","2","3","4","5","6","7","8","9", "0", ".":
            
                if (numberForDefault) {
                    numberInDisplay = "0"
                    numberForDefault = false
                }
                        
                    
                
                if(numberInDisplay.count < 12){
                    if(numberInDisplay == "0" ){

                        if (text == "."){
                            numberInDisplay = "0."
                        } else {
                            numberInDisplay = text
                            chageToTextButtonAC(character: "C")
                        }

                    } else {
                        
                        if(numberInDisplay.contains(".") && text == ".") {
                        } else {
                            numberInDisplay = numberInDisplay + text
                        }
                        
                        chageToTextButtonAC(character: "C")
                    }
                }
            displayOperationLabel.text = numberInDisplay

            
            case "-", "+", "×", "÷":
                if numberInDisplay != "0"  {
                    
                    switch text {
                        case "-":
                        opetationToMake = .sustaction
                        activateButtonOperate(active: true)
                        
                        case "+":
                        opetationToMake = .add
                        activateButtonOperate(active: true)
                        
                        case "×":
                            opetationToMake = .multi
                        activateButtonOperate(active: true)
                        
                        case "÷":
                        opetationToMake = .divition
                        activateButtonOperate(active: true)
                        
                        default:
                            break
                            
                    }
                    
                    
                    if (!numberForDefault) {
                        termsToOperate.append(Float(numberInDisplay)!)
                    }
                    numberForDefault = true
                    
                }
            displayOperationLabel.text = numberInDisplay
            case "=":
      
                if(numberInDisplay != "0" && termsToOperate.count >= 1){
                    termsToOperate.append(Float(numberInDisplay)!)
                    term1 = termsToOperate.removeFirst() ?? 0.0
                    term2 = termsToOperate.removeFirst() ?? 0.0
                    numberInDisplay = String(result(termino1: term1!, termino2: term2!))
                    displayOperationLabel.text = numberInDisplay

                }
                numberInDisplay = "0"
                opetationToMake = nil
                porcentaje = false
            
            
            default:
                break
            }
        
        func activateButtonOperate(active: Bool) {
            
            if (active){
                buttonPressedOperation = sender
                buttonPressedOperation?.backgroundColor = .orange
            } else {
                buttonPressedOperation?.backgroundColor = .gray
            }
        }

        
    }
    
    
    func chageToTextButtonAC(character:String) {
        buttonAc.setTitleButon(text: character)

    }
    

    
    func result(termino1: Float, termino2: Float) -> Float {
        

        var result: Float = 0.0
        switch opetationToMake {
            case .add:
            if(porcentaje) {
                result = termino1 + (termino1 * (termino2 / 100))
            } else {
                result = termino1 + termino2

            }
                                
            case .sustaction:
            if(porcentaje) {
                result = termino1 - (termino1 * (termino2 / 100))
            } else {
                result = termino1 - termino2

            }
            case .multi:
                result = termino1 * termino2

            
            case .divition:
                result = termino1 / termino2


        default:
            break
        }
        
        return result
    }

    
}
