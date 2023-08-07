//
//  NumberTextField.swift
//  C.A.C
//
//  Created by Csaba Otvos on 19.05.2022.
//

import SwiftUI

struct NumberTextField: View {
    @State var isTapped = false
    @State var name : String
    @State var number:Int
    @State var width: CGFloat
    @State var height: CGFloat
    var body: some View {
        VStack(alignment:.leading){
            TextField("",value: $number, formatter: NumberFormatter()) { (status) in
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
                ,alignment: .center
            )
        }
        .padding(.vertical,12)
        .padding(.horizontal)
        .frame(width: width, height: height)
        .background(Color.gray.opacity(0.09))
        .cornerRadius(5)
    }
}

struct NumberTextField_Previews: PreviewProvider {
    static var previews: some View {
        NumberTextField(name: "", number: .zero, width: .infinity, height: 50)
    }
}
