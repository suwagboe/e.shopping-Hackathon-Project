

import Foundation
import Firebase

struct Company: Codable & Equatable {
    let name: String
    let id:Int
    let companyId: String //doc Id
    var desc: String
    var alertMsg: String
    var companyImgURL: String
    var animalsRating: Bool
    var environmentRating: Bool
    var peopleRating: Bool
    var politicsRating: Bool
    var sustainabilityRating: Bool
    
//    public func getCompanyRating:
}

extension Company{
    init(_ dictionary: [String: Any]) {
        self.name = dictionary["name"] as? String ?? "no company name"
        self.id = dictionary["id"] as? Int ?? -1
        self.desc = dictionary["desc"] as? String ?? "no description available"
        self.companyId = dictionary["companyId"] as? String ?? "no doc id available"
        self.alertMsg = dictionary["alertMsg"] as? String ?? "no alert msg available"
        self.companyImgURL = dictionary["companyImgURL"] as? String ?? "no img URL available"
        self.animalsRating = dictionary["animalsRating"] as? Bool ?? false
        self.environmentRating = dictionary["environmentRating"] as? Bool ?? false
        self.peopleRating = dictionary["peopleRating"] as? Bool ?? false
        self.politicsRating = dictionary[""] as? Bool ?? false
        self.sustainabilityRating = dictionary[""] as? Bool ?? false
    }
}
