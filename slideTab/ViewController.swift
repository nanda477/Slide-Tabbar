//
//  ViewController.swift
//  slideTab
//
//  Created by D2V iMac on 20/06/20.
//  Copyright © 2020 D2V. All rights reserved.
//
import Foundation
import UIKit

class ViewController: UIViewController {
    
    let slVC = UISimpleSlidingTabController()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(slVC.view)
        setupUI()
    }
    
    private func setupUI(){
        // view
        view.backgroundColor = .white
        
        // navigation
        navigationItem.title = "Sliding Tab Example"
        navigationController?.navigationBar.barTintColor = .orange
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barStyle = .black
        
        // slidingTab
        let fVC = storyboard?.instantiateViewController(withIdentifier: "FirstVC_ID") as! FirstVC
        let sVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC_ID") as! SecondVC
        
        slVC.addItems(views: [fVC, sVC], name: ["First", "Second"])
//        addItem(item: fVC, title: "First") // add first item
//        addItem(item: sVC, title: "Second") // add second item
        slVC.setHeaderActiveColor(color: .white) // default blue
        slVC.setHeaderInActiveColor(color: .lightText) // default gray
        slVC.setHeaderBackgroundColor(color: .orange) // default white
        //setCurrentPosition(position: 1) // default 0
        slVC.build() // build
    }
    
}

