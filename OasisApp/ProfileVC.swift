//
//  ProfileVC.swift
//  OasisApp
//
//  Created by Pedro de Jesús Razo Flores on 02/06/24.
//

import UIKit

class ProfileVC: UIViewController {
    
    @IBOutlet weak var btnEditProfile: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btnEditProfile.backgroundColor = UIColor.clear
        btnEditProfile.layer.borderColor = UIColor.white.cgColor
        btnEditProfile.layer.borderWidth = 2
        btnEditProfile.layer.cornerRadius = 2
    }
    

}
