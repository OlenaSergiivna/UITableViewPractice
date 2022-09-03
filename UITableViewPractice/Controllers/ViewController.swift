//
//  ViewController.swift
//  UITableViewPractice
//
//  Created by user on 03.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let monthArray: [String] = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

    @IBOutlet weak var simpleTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        simpleTableView.delegate = self
        simpleTableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return monthArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        var content = cell.defaultContentConfiguration()
        content.text = monthArray[indexPath.row]
        cell.contentConfiguration = content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SecondViewViewController") as! SecondViewViewController
        
        viewController.number = "\(indexPath.row + 1)"
        viewController.month = monthArray[indexPath.row]
        
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    
}
