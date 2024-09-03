//
//  ViewController.swift
//  TableViewUIKit
//
//  Created by Abouzar Moradian on 9/3/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var table: UITableView!

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell" , for: indexPath) as! ColorCellVC
        
        cell.backgroundColor = getColor(number: indexPath.row + 1)
        cell.label.text = String(indexPath.row + 1)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let detailVC = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
            
            detailVC.number = indexPath.row + 1
            detailVC.color = getColor(number: indexPath.row + 1)
            
            navigationController?.pushViewController(detailVC, animated: true)
        }
        
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
    }
    
    func getColor(number: Int) -> UIColor {
        switch (number % 2 == 0, number % 5 == 0) {
        case (true, true):
            return .yellow
        case (true, false):
            return .green
        case (false, true):
            return .red
        default:
            return .white
        }
    }

    
    
}

