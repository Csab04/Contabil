//
//  SignInTextFieldStyle.swift
//  C.A.C
//
//  Created by Csaba Otvos on 19.05.2022.
//

import SwiftUI

struct EmailTextFieldStyle: View {
    @State var isTapped = false
    @State var name : String
    @State var width: CGFloat
    @State var height: CGFloat
    @State var text: String
    var body: some View {
        VStack(alignment:.leading){
            TextField("",text: $text) { (status) in
                if status{
                    withAnimation(.easeIn){
                        isTapped = true
                    }
                }
            } onCommit: {
                withAnimation(.easeOut){
                    isTapped = false
                }
            }
            .padding(.top, isTapped ? 15 :0 )
            .overlay(
                Text(name)
                    .scaleEffect(isTapped ? 0.8 : 1)
                    .offset(x:isTapped ? -7 : 0, y: isTapped ? -15 : 0)
                    .foregroundColor(.gray)
                ,alignment: .leading
            )
        }
        .padding(.vertical,12)
        .padding(.horizontal)
        .frame(width: width, height: height)
        .background(Color.gray.opacity(0.09))
        .cornerRadius(5)
    }
}

struct EmailTextFieldStyle_Previews: PreviewProvider {
    static var previews: some View {
        EmailTextFieldStyle(name: "E-mail", width: 100, height: 100, text: "")
            .previewInterfaceOrientation(.landscapeRight)
    }
}


struct PasswordTextField: View {
    @State var isTapped = false
    @State var password : String
    @State var width: CGFloat
    @State var height: CGFloat
    @State var text: String
    @State var visibile = false
    var body: some View{
        HStack{
            if visibile{
                VStack(alignment:.leading){
                    TextField("",text: $text) { (status) in
                        if status{
                            withAnimation(.easeIn){
                                isTapped = true
                            }
                        }
                    } onCommit: {
                        withAnimation(.easeOut){
                            isTapped = false
                        }
                    }
                    .padding(.top, isTapped ? 15 :0 )
                    .overlay(
                        Text(password)
                            .scaleEffect(isTapped ? 0.8 : 1)
                            .offset(x:isTapped ? -7 : 0, y: isTapped ? -15 : 0)
                            .foregroundColor(.gray)
                        ,alignment: .leading
                    )
                }
                .padding(.vertical,12)
                .padding(.horizontal)
                .frame(width: width, height: height)
                .background(Color.gray.opacity(0.09))
                .cornerRadius(5)
            } else {
                VStack{
                SecureField("Password", text: $text)
                }
                .padding(.vertical,12)
                .padding(.horizontal)
                .frame(width: width, height: height)
                .background(Color.gray.opacity(0.09))
                .cornerRadius(5)
            }
        }
        .overlay(
            Button(action: {
                self.visibile.toggle()
            }, label: {
                Image(systemName: self.visibile ?  "eye.fill" : "eye.slash.fill")
            })
            .foregroundColor(.black)
            .frame(maxWidth:.infinity,alignment: .trailing)
            .padding()
        )
    }
    
}
