//
//  DetailViewController.swift
//  TableViewUIKit
//
//  Created by Abouzar Moradian on 9/3/24.
//

import UIKit

class DetailViewController: UIViewController{
    
    @IBOutlet weak var background: UIView!
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    var number: Int?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let number = number {
                    numberLabel.text = "\(number)"
            
            let text = "\(number) % 2 = \(number % 2),      \(number) % 5 = \(number % 5)"
            details.text = text
                }
        
        if let color = color {
            background.backgroundColor = color
        }
    }
}
