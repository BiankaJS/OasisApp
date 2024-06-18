import UIKit

class CatalogVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableProperty: UITableView!
    var properties: [Property] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableProperty.dataSource = self
        tableProperty.delegate = self
        self.properties = [
            Property(id: 1, name: "Producto 1", location: "Ubicación 1", price: 99.99),
            Property(id: 2, name: "Producto 2", location: "Ubicación 2", price: 49.99),
            Property(id: 3, name: "Producto 3", location: "Ubicación 3", price: 29.99),
            Property(id: 4, name: "Producto 4", location: "Ubicación 4", price: 89.99),
            Property(id: 5, name: "Producto 5", location: "Ubicación 5", price: 59.99),
            Property(id: 1, name: "Producto 1", location: "Ubicación 1", price: 99.99),
            Property(id: 2, name: "Producto 2", location: "Ubicación 2", price: 49.99),
            Property(id: 3, name: "Producto 3", location: "Ubicación 3", price: 29.99),
            Property(id: 4, name: "Producto 4", location: "Ubicación 4", price: 89.99),
            Property(id: 5, name: "Producto 5", location: "Ubicación 5", price: 59.99)
        ]
        
        tableProperty.register(CustomTableViewCell.self, forCellReuseIdentifier: "CustomCell")
                
        tableProperty.reloadData()
    }
    
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return properties.count
    }
    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return UITableViewCell()
}
    
}
