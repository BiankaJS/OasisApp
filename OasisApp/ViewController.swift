//
//  ViewController.swift
//  OasisApp
//
//  Created by Bianka Juarez on 27/05/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cardLogin: UIView!
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        loadCard()
        super.viewDidLoad()
    }

    func loadCard()
    {
        cardLogin.layer.cornerRadius = 13
        cardLogin.layer.shadowColor = UIColor.black.cgColor
        cardLogin.layer.shadowOpacity = 0.5
        cardLogin.layer.shadowOffset = CGSize(width: 0, height: 2)
        cardLogin.layer.shadowRadius = 3
        
        btnLogin.backgroundColor = UIColor.clear
            btnLogin.layer.borderColor = UIColor.white.cgColor
            btnLogin.layer.borderWidth = 2
            btnLogin.layer.cornerRadius = 2
    }
}

