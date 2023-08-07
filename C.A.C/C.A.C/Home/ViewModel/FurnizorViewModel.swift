//
//  FurnizorViewModel.swift
//  C.A.C
//
//  Created by Csaba Otvos on 22.05.2022.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
class FurnizorViewModel:ObservableObject{
    @Published private(set) var furnizor: [Furnizor] = []
    let db = Firestore.firestore()
    
    init(){
        readFurnizor()
    }
    
    func readFurnizor(){
        db.collection("Furnizor").addSnapshotListener { querySnapshot, error in
            guard let document = querySnapshot?.documents else {
                print("Error fetching documents:\(error!.localizedDescription)")
                return
            }
            self.furnizor = document.compactMap({ document -> Furnizor? in
                do{
                    return try document.data(as: Furnizor.self)
                }
                catch{
                    print("Error recording documents:\(error)")
                    return nil
                }
            })
        }
    }
    
    func addFurnizor(nume:String,tip:String,nRC:Int,cif:Int,tara:String,judet:String,adresa:String){
        do{
            let newFurnizor = Furnizor(id: "\(UUID())", nume: nume, tip: tip, numarDeLaRC: nRC, cif: cif, tara: tara, judet: judet, adresa: adresa)
            try db.collection("Furnizor").document().setData(from:newFurnizor)
        } catch{
            print("Error:\(error)")
        }
        
    }
}
