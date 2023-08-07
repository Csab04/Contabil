//
//  NDRView.swift
//  C.A.C
//
//  Created by Csaba Otvos on 19.05.2022.
//

import SwiftUI

struct NDRView: View {
   
    var body: some View {
        NavigationView{
            VStack{
                
                Button {
                    
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .padding()
                }
                HStack{
                    
                }

                NDRTopLineView()
                List{
                    
                }
                
            }
            .navigationBarHidden(true)
        }
        .navigationBarHidden(true)
        .navigationViewStyle(.stack)
    }
}

struct NDRView_Previews: PreviewProvider {
    static var previews: some View {
        NDRView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
