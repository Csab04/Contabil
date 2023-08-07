//
//  C_A_CApp.swift
//  C.A.C
//
//  Created by Csaba Otvos on 18.05.2022.
//

import SwiftUI
import Firebase
@main
struct C_A_CApp: App {
    init(){
        FirebaseApp.configure()
    }
    @StateObject var furnizorViewModel = FurnizorViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(furnizorViewModel)
        }
    }
}
