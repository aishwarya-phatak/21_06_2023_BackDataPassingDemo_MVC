//
//  ViewController.swift
//  21_06_2023_BackDataPassingDemo_MVC
//
//  Created by Vishal Jagtap on 24/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var rollNumberLabel: UILabel!
    
    var secondViewController : SecondViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnMoveToSecondViewController(_ sender: Any) {
        secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        secondViewController?.dataToBePassed = self
        
        navigationController?.pushViewController(secondViewController!, animated: true)
    }
}

extension ViewController : BackDataPassing{
    func dataToBePassedToFVC(student: Student) {
        
        self.firstNameLabel.text = student.firstName
        self.lastNameLabel.text = student.lastName
        self.rollNumberLabel.text = String(student.rollNumber)
    }
}
