//
//  SignInView.swift
//  C.A.C
//
//  Created by Csaba Otvos on 18.05.2022.
//

import SwiftUI

struct SignInView: View {
    @State var email = ""
    @State var password = ""
     
    @StateObject var signInViewModel = SignInViewModel()
    var body: some View {
        ZStack{
            Color("OceanBlue").edgesIgnoringSafeArea(.all)
            VStack{
                Text("Sign in ")
                    .font(.title.bold().monospaced())
                    .padding()
                EmailTextFieldStyle(name: "E-mail", width: 300, height: 50, text: email)
                    .background(Color.white)
                    .cornerRadius(.infinity)
                    .padding()
                
                PasswordTextField(password: "Password", width: 300, height: 50, text: password)
                    .background(Color.white)
                    .cornerRadius(.infinity)
                    .padding()
                
                Button {
                    signInViewModel.signIn(email: email, password: password)
                } label: {
                    Text("Log in")
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color("OceanBlue"))
                        .cornerRadius(.infinity)
                }

                Spacer()
            }
            .frame(width: 400, height: 400)
            .background(.ultraThinMaterial)
            .cornerRadius(50)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
            .environmentObject(SignInViewModel())
            .previewInterfaceOrientation(.landscapeRight)
    }
}
