//
//  ResultsViewController.swift
//  MyBMI
//
//  Created by Brittany Angelle
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var condition: String?
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!
    
    override func viewDidLoad() {
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        conditionLabel.text = condition
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
       
        dismiss(animated: true, completion: nil)
        
    }
    
}
