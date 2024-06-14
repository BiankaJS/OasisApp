import UIKit

class ProfileVC: UIViewController {
    @IBOutlet weak var btnEditProfile: UIButton!
    @IBOutlet weak var btnLogout: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnLoad()
        
    }
    
    @IBAction func btnLogout(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "Login") as? ViewController {
            self.present(vc, animated: true, completion: nil)
        }
    }
    
    func btnLoad() {
        btnEditProfile.backgroundColor = UIColor.clear
        btnEditProfile.layer.borderColor = UIColor.white.cgColor
        btnEditProfile.layer.borderWidth = 2
        btnEditProfile.layer.cornerRadius = 2
        btnLogout.backgroundColor = UIColor.clear
        btnLogout.layer.borderColor = UIColor.white.cgColor
        btnLogout.layer.borderWidth = 2
        btnLogout.layer.cornerRadius = 2
    }
}
