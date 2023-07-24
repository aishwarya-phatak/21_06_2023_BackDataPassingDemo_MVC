//
//  SecondViewController.swift
//  21_06_2023_BackDataPassingDemo_MVC
//
//  Created by Vishal Jagtap on 24/07/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var rollNumberTextField: UITextField!
    
    var dataToBePassed : BackDataPassing? //creating a delegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnBack(_ sender: Any) {
        guard let dataToBePassedDelegate = dataToBePassed else { return }
        
       let firstNameExtracted = self.firstNameTextField.text
       let lastNameExtracted = self.lastNameTextField.text
       let rollNumberExtracted = self.rollNumberTextField.text
        
        let rollNumber = Int(rollNumberExtracted!) ?? 13
        
        let studentObject = Student(
            firstName: firstNameExtracted!,
            lastName: lastNameExtracted!,
            rollNumber: rollNumber)
       
        dataToBePassedDelegate.dataToBePassedToFVC(student : studentObject)
        
        navigationController?.popViewController(animated: true)
    }
}

