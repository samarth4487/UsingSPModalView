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
    
    let modalView = SPModal()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewWidth = view.frame.width
        
        modalView.frame = CGRect(x: 30, y: (viewWidth - 40)/2, width: viewWidth - 60, height: viewWidth)
        modalView.backgroundColor = .black
        modalView.set(image: #imageLiteral(resourceName: "sample"))
        modalView.set(heading: "Samarth Paboowal")
        modalView.set(textColor: .white)
        view.addSubview(modalView)
    }


}

