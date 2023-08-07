//
//  FacturaViewModel.swift
//  C.A.C
//
//  Created by Csaba Otvos on 22.05.2022.
//

import Foundation
import SwiftUI
import FirebaseFirestore
import FirebaseFirestoreSwift

class FacturaManager: ObservableObject {
    @Published private(set) var factura: [Factura] = []
    private var db = Firestore.firestore()
    
    init(){
        readFactura()
    }
    
    func readFactura(){
         
    }
    
    
    func getFactura(){
        
    }
    
}
