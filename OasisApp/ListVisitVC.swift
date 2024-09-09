import UIKit

class ListVisitVC: UIViewController {
    @IBOutlet weak var cardVist: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadCard()
        
    }

    func loadCard()
    {
        cardVist.layer.cornerRadius = 13
        cardVist.layer.shadowColor = UIColor.black.cgColor
        cardVist.layer.shadowOpacity = 0.5
        cardVist.layer.shadowOffset = CGSize(width: 0, height: 2)
        cardVist.layer.shadowRadius = 3
    }
}
