//
//  ViewController.swift
//  LEDBoard
//
//  Created by JongHyuk Park on 2022/06/21.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate {


    @IBOutlet weak var contentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewController = segue.destination as? SettingViewController {
            settingViewController.delegate = self
            settingViewController.ledText = self.contentLabel.text
            settingViewController.textColor = self.contentLabel.textColor
            if contentLabel.textColor == .yellow {
                print("label color is yellow")
            }
            
            settingViewController.backgroundColor = self.view.backgroundColor ?? .black
        }
        print(#function)
    }
    
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
        if let text = text {
            self.contentLabel.text = text
        }
        contentLabel.textColor = textColor
        self.view.backgroundColor = backgroundColor
    }
}

