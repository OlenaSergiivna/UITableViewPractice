//
//  ViewController.swift
//  UITableViewPractice
//
//  Created by user on 03.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var simpleTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        simpleTableView.delegate = self
        simpleTableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        return cell
    }
    
    
}
