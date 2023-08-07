//
//  SignInModel.swift
//  C.A.C
//
//  Created by Csaba Otvos on 18.05.2022.
//

import Foundation
import SwiftUI
import Firebase

class SignInViewModel: ObservableObject{
    
    @AppStorage("logged") var logged = false
    
    func signIn(email:String,password:String){
        Auth.auth().signIn(withEmail: email, password: password) { ress, err in
            if err != nil {
                print("Error:\(err!.localizedDescription)")
            } else{
                
                withAnimation(.spring()){
                    self.logged = true
                }
            }
        }
    }
    
    
    func signOut(){
        withAnimation(.spring()){
            try!Auth.auth().signOut()
            self.logged = false
        }
    }
    
}
