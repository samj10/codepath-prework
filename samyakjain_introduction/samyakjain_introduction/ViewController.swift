//
//  ViewController.swift
//  samyakjain_introduction
//
//  Created by Samyak Jain on 2/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
         
         numberOfPetsLabel.text = "\(Int(sender.value))"
     }
    @IBAction func changeColor(_ sender: Any) {
    }
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }

    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
           
           // Let's us chose the title we have selected from the segmented control
           let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
           
           // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
           // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
           let introduction = "My name is \(firstNameTextField.text!) \(LastNameTextField.text!) and I attend \(SchoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
           
           
           // Creates the alert where we pass in our message, which our introduction.
           let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
           
           // A way to dismiss the box once it pops up
           let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
           
           // Passing this action to the alert controller so it can be dismissed
           alertController.addAction(action)
           
           present(alertController, animated: true, completion: nil)
       }
        
       
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var SchoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

