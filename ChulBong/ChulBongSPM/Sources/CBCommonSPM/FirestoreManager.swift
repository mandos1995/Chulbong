//
//  File.swift
//  
//
//  Created by 김민석 on 2023/10/06.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

public final class FirestoreManager {
    private var documentListener: ListenerRegistration?
    
    public init() { }
    
    public func request() {
        let db = Firestore.firestore().collection("/chulbong")
        db.getDocuments { snapshot, error in
            guard let snapshot else { return }
            
        }
        
    }
}
