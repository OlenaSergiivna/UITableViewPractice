//
//  SecondViewViewController.swift
//  UITableViewPractice
//
//  Created by user on 03.09.2022.
//

import UIKit

class SecondSimpleViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var monthLabel: UILabel!
    
    var number: String? = ""
    var month: String? = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        numberLabel.text = number
        monthLabel.text = month
    }
}
