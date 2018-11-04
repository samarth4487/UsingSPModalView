//
//  ViewController.swift
//  UsingSPModalView
//
//  Created by Samarth Paboowal on 04/11/18.
//  Copyright © 2018 Samarth Paboowal. All rights reserved.
//

import UIKit
import SPModalView

class ViewController: UIViewController {
    
    let blackModalButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.setTitle("Black Modal", for: .normal)
        return button
    }()
    
    let blueModalButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.setTitle("Blue Modal", for: .normal)
        return button
    }()
    
    
    let modalView = SPModal()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
//        let viewWidth = view.frame.width
//
//        modalView.frame = CGRect(x: 30, y: (viewWidth - 40)/2, width: viewWidth - 60, height: viewWidth)
//        modalView.backgroundColor = .black
//        modalView.set(image: #imageLiteral(resourceName: "sample"))
//        modalView.set(heading: "Samarth Paboowal")
//        modalView.set(textColor: .white)
//        view.addSubview(modalView)
        
    }

    func setupButtons() {
        
        view.addSubview(blackModalButton)
        blackModalButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        blackModalButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        blackModalButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        blackModalButton.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: -10).isActive = true
        
        view.addSubview(blueModalButton)
        blueModalButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        blueModalButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        blueModalButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        blueModalButton.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 10).isActive = true
    }
}

