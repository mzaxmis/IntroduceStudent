//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Misbah M on 12/25/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var majorNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPets: UILabel!
        
    @IBOutlet weak var petStepper: UIStepper!
    
    @IBOutlet weak var petSwitch: UISwitch!
    
    @IBAction func stepperChange(_ sender: UIStepper) {
        
        numberOfPets.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfTapped(_ sender: UIButton) {
        let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)
        // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        let introduction = "Hello! My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and am majoring in \(majorNameTextField.text!). I own \(numberOfPets.text!) dogs. It is \(petSwitch.isOn) that I want more pets."
        print(introduction)
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

