//
//  ViewController.swift
//  Switch-UIKit
//
//  Created by DA MAC M1 157 on 2023/07/06.
//

import UIKit

class ViewController: UIViewController {
    
    private let mySwitch: UISwitch = {
        let coolSwitch = UISwitch(frame: CGRect(x: 163, y: 400, width: 70, height: 70) )
        coolSwitch.onTintColor = UIColor.orange
        coolSwitch.thumbTintColor = UIColor.black
//        coolSwitch.onImage = UIImage(systemName: "lightswitch.on")
//        coolSwitch.offImage = UIImage(systemName: "lightswitch.off")
        coolSwitch.isOn = false
        return coolSwitch
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mySwitch)
        
        mySwitch.addTarget(self, action: #selector(switchTapped), for: .valueChanged)
    }
    
     @objc private func switchTapped() {
         if mySwitch.isOn == true {
             view.backgroundColor = .brown
         } else {
             view.backgroundColor = .green
         }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        mySwitch.setOn(true, animated: true)
    }

 

}

