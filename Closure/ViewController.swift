//
//  ViewController.swift
//  Closure
//
//  Created by Vignesh on 14/07/18.
//  Copyright © 2018 Vignesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let images: UIImageView = {
        let img = UIImageView(image: #imageLiteral(resourceName: "apple"))
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let WelcomeLbl: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        let attributedText = NSMutableAttributedString(string: "Welcome to Apple", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 20)])
        label.attributedText = attributedText
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(images)
        view.addSubview(WelcomeLbl)
        viewSetup()
    }
    
    func viewSetup(){
        images.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        images.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        images.heightAnchor.constraint(equalToConstant: 100).isActive = true
        images.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        WelcomeLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        WelcomeLbl.topAnchor.constraint(equalTo: images.bottomAnchor, constant: 20).isActive = true
        WelcomeLbl.heightAnchor.constraint(equalToConstant: 30).isActive = true
        WelcomeLbl.widthAnchor.constraint(equalToConstant: view.frame.width)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

