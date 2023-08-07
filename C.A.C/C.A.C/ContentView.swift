//
//  ContentView.swift
//  C.A.C
//
//  Created by Csaba Otvos on 18.05.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var signInViewModel = SignInViewModel()
    var body: some View {
        if signInViewModel.logged {
            HomeView()
        } else {
            SignInView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
