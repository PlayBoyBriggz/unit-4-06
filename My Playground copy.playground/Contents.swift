// Created on November-2018
// Created by Christian Briglio 
// Created for ICS3U
// this program takes two strings from user and sees if they are the same 
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    
    
    let instructionLabel = UILabel()
    let checkButton = UIButton()
    let answerLabel = UILabel()
    var stringOneTextField = UITextField()
    var stringTwoTextField = UITextField()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "Enter 2 strings and well check to see if their the same"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        
        stringOneTextField.placeholder = "Enter string 1"
        view.addSubview(stringOneTextField)
        stringOneTextField.translatesAutoresizingMaskIntoConstraints = false
        stringOneTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        stringOneTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        stringTwoTextField.placeholder = "Enter string 2"
        view.addSubview(stringTwoTextField)
        stringTwoTextField.translatesAutoresizingMaskIntoConstraints = false
        stringTwoTextField.topAnchor.constraint(equalTo: stringOneTextField.bottomAnchor, constant: 20).isActive = true
        stringTwoTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        checkButton.setTitle("Check", for: .normal)
        checkButton.setTitleColor(.blue, for: .normal)
        checkButton.titleLabel?.textAlignment = .center
        checkButton.addTarget(self, action: #selector(compareStrings), for: .touchUpInside)
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo: stringTwoTextField.bottomAnchor, constant: 20).isActive = true
        checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    @objc func compareStrings() {
        var stringOne = String(stringOneTextField.text!)
        var stringTwo = String(stringTwoTextField.text!)
        
        var answerOne = (stringOne.uppercased())
        var answerTwo = (stringTwo.uppercased())
        
        if answerOne == answerTwo {
            answerLabel.text = "true"
        }
        else {answerLabel.text = "false"}
    }
    
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
