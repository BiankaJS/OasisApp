//
//  CreateAccountVC.swift
//  OasisApp
//
//  Created by Pedro de Jesús Razo Flores on 29/05/24.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    @IBOutlet weak var cardCreateAccount: UIView!
    @IBOutlet weak var btnCreatAccount: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardCreateAccount.layer.cornerRadius = 13
        cardCreateAccount.layer.shadowColor = UIColor.black.cgColor
        cardCreateAccount.layer.shadowOpacity = 0.5
        cardCreateAccount.layer.shadowOffset = CGSize(width: 0, height: 2)
        cardCreateAccount.layer.shadowRadius = 3
        
        btnCreatAccount.backgroundColor = UIColor.clear
        btnCreatAccount.layer.borderColor = UIColor.white.cgColor
        btnCreatAccount.layer.borderWidth = 2
        btnCreatAccount.layer.cornerRadius = 2
        
    }
    


}
