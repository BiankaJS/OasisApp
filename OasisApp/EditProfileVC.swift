//
//  EditProfileVC.swift
//  OasisApp
//
//  Created by Pedro de Jesús Razo Flores on 02/06/24.
//

import UIKit

class EditProfileVC: UIViewController {
    
    @IBOutlet weak var btnSaveData: UIButton!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblUsername: UILabel!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        loadCard()
        
        DispatchQueue.main.async {
            self.lblName.text = self.user?.name
            self.lblUsername.text = self.user?.username
            self.txtName.text = self.user?.name
            self.txtUser.text = self.user?.username
            self.txtEmail.text = self.user?.email
            self.txtPass.text = self.user?.password
            self.txtAddress.text = self.user?.address
            self.txtPhone.text = self.user?.phone
        }
    }
    
    @IBAction func btnUpdate(_ sender: UIButton) {
        guard let username = txtUser.text,!username.isEmpty else {
            showAlert("Warning", "User input required")
            return
        }
        
        guard let name = txtName.text,!name.isEmpty else {
            showAlert("Warning", "Name input required")
            return
        }
        
        guard let email = txtEmail.text,!email.isEmpty else {
            showAlert("Warning", "Email input required")
            return
        }
        
        guard let password = txtPass.text,!password.isEmpty else {
            showAlert("Warning", "Password input required")
            return
        }
        
        guard let address = txtAddress.text, !address.isEmpty else { return showAlert("Warning", "Address input required") }
        
        guard let phone = txtPhone.text,!phone.isEmpty else {
            showAlert("Warning", "Contact phone number required")
            return
        }
        
    }
    
    func loadCard()
    {
        btnSaveData.backgroundColor = UIColor.clear
        btnSaveData.layer.borderColor = UIColor.white.cgColor
        btnSaveData.layer.borderWidth = 2
        btnSaveData.layer.cornerRadius = 2
    }
}
