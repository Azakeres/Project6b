//
//  ViewController.swift
//  Project6b
//
//  Created by Arash Zakeresfahani on 3/22/19.
//  Copyright © 2019 Arash Zakeresfahani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.backgroundColor = .red
        label1.text = "These"
        label1.sizeToFit()
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = .green
        label2.text = "walnutes"
        label2.sizeToFit()
        
        
        view.addSubview(label1)
        view.addSubview(label2)
        
        let viewsDictionary = ["label1": label1, "label2": label2]
//
//        for label in viewsDictionary.keys {
//                view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: viewsDictionary))
//        }
//
//        let metrics = ["labelHight": 50]
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1(labelHight@999)]-[label2(label1)]", options: [], metrics: metrics, views: viewsDictionary))
//        
//    }
        var previous: UILabel?
        
        
        for label in [label1, label2]{
            //label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
            label.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 1/5, constant: 10).isActive = true
            label.heightAnchor.constraint(equalToConstant: 88).isActive = true
            if let previous = previous {
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
            }else{
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
            }
            previous = label
        }
    }

}

