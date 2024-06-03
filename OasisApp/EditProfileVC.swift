//
//  EditProfileVC.swift
//  OasisApp
//
//  Created by Pedro de Jesús Razo Flores on 02/06/24.
//

import UIKit

class EditProfileVC: UIViewController {
    
    @IBOutlet weak var btnSaveData: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btnSaveData.backgroundColor = UIColor.clear
        btnSaveData.layer.borderColor = UIColor.white.cgColor
        btnSaveData.layer.borderWidth = 2
        btnSaveData.layer.cornerRadius = 2
    }
    
}
