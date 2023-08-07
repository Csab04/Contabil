//
//  MonthListView.swift
//  C.A.C
//
//  Created by Csaba Otvos on 19.05.2022.
//

import SwiftUI

struct MonthListView: View {
    @State var month: Month
   
    @Environment(\.presentationMode) var pM
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                Button {
                    pM.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.white)
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .padding()
                }

                Text(month.title)
                        .foregroundColor(.white)
                    .font(.title.bold().italic())
                    .frame(maxWidth:.infinity,alignment: .center)
                    .padding()
                }
                .frame(maxWidth:.infinity,maxHeight: 100)
                .background(month.backGround)
                List{
                   
                }
            }
            
            .navigationBarHidden(true)
        }
        .navigationBarHidden(true)
        .navigationViewStyle(.stack)
    }
}

struct MonthListView_Previews: PreviewProvider {
    static var previews: some View {
        MonthListView(month: Month(id: UUID().uuidString, title: "Ianuarie", backGround: .blue))
            .previewInterfaceOrientation(.landscapeRight)
    }
}
