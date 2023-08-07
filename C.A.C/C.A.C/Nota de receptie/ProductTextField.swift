//
//  ProductTextField.swift
//  C.A.C
//
//  Created by Csaba Otvos on 19.05.2022.
//

import SwiftUI

struct ProductTextField: View {
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

struct ProductTextField_Previews: PreviewProvider {
    static var previews: some View {
        ProductTextField(name: "Nume", width: .infinity, height: 50, text: "")
            .previewInterfaceOrientation(.landscapeRight)
    }
}
