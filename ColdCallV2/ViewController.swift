//
//  ViewController.swift
//  Cold Call V2
//
//  Created by administrator on 01/12/2021.
//

import UIKit

class ViewController: UIViewController {

    
    let namesArray: [String] =
    ["Hassan", "Amer", "Hamza","Tariq", "Sati"]
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func coldCallButton(_ sender: UIButton) {
        changeNameAndNumber()
    }
    
    private func getRandomNumber() -> Int{
        return Int.random(in: 0..<5)
    }
    
    private func changeNameAndNumber(){
        let number = getRandomNumber()
        nameLabel.text = namesArray[number]
        numberLabel.text = String(number+1)
        
        switch number+1 {
        case 1...2:
            numberLabel.textColor = .red
        case 3...4:
            numberLabel.textColor = .orange
        case 5:
            numberLabel.textColor = .green
        default:
            numberLabel.textColor = .black
        }
    }
}

