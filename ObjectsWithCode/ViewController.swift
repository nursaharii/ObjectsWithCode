//
//  ViewController.swift
//  ObjectsWithCode
//
//  Created by Nurşah on 13.11.2021.
//

import UIKit

class ViewController: UIViewController {
    var myLabel = UILabel()
    override func viewDidLoad() {
        let width = view.frame.size.width
        let height = view.frame.size.height
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width/2 - width*0.4, y: height/4, width: width * 0.8, height: 100)
        view.addSubview(myLabel)
        
        let myButton = UIButton()
        myButton.setTitle("Buton", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width/2 - width*0.4, y: height/3, width: width * 0.8, height: 100)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.labelDegis), for: UIControl.Event.touchUpInside)
    }
    @objc func labelDegis() {
        myLabel.text = "Değiş"
       //print(" ")
    }
}

