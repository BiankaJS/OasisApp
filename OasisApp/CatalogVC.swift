import UIKit

class CatalogVC: UIViewController {
    var properties: [Property] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.properties = [
            Property(id: 1, name: "Producto 1", location: "Ubicación 1", price: 99.99),
            Property(id: 2, name: "Producto 2", location: "Ubicación 2", price: 49.99),
            Property(id: 3, name: "Producto 3", location: "Ubicación 3", price: 29.99),
            Property(id: 4, name: "Producto 4", location: "Ubicación 4", price: 89.99),
            Property(id: 5, name: "Producto 5", location: "Ubicación 5", price: 59.99)
        ]
    }
    
}
