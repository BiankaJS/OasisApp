import Foundation
struct Property: Codable {
    var id: Int;
    var name: String;
    var location: String;
    var price: Float;
    
    init(id: Int, name: String, location: String, price: Float) {
        self.id = id
        self.name = name
        self.location = location
        self.price = price
    }
}
