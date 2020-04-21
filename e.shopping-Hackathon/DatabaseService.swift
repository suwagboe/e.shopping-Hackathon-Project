//
//  DatabaseService.swift
//  e.shopping-Hackathon
//
//  Created by Bienbenido Angeles on 4/21/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import Foundation
import FirebaseFirestore

class DatabaseService {
    static let companiesCollection = "companies"
    static let productsCollection = "products"
    
    private let db = Firestore.firestore()
    
    private init(){}
        
    public func readCompanies(completion: @escaping (Result<[Company], Error>) -> ()){
        db.collection(DatabaseService.companiesCollection).getDocuments { (snapshot, error) in
            if let error = error{
                completion(.failure(error))
            } else if let snapshot = snapshot {
                let companies = snapshot.documents.compactMap{Company($0.data())}
                completion(.success(companies.sorted{$0.id > $1.id}))
            }
        }
    }
    
    public func updateCompany(company: Company, completion: @escaping (Result<Bool, Error>) -> ()){
        db.collection(DatabaseService.companiesCollection).document(company.companyId).updateData(["alertMsg": company.alertMsg, "companyImgURL": company.companyImgURL, "desc": company.desc]) { (error) in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(true))
            }
        }
    }
}
