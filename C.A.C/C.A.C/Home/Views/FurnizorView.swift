//
//  FurnizorView.swift
//  C.A.C
//
//  Created by Csaba Otvos on 22.05.2022.
//

import SwiftUI

struct FurnizorView: View {
    @StateObject var furnizorViewModel = FurnizorViewModel()
    @Environment(\.presentationMode) var pM
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Button {
                        pM.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                            .frame(maxWidth:.infinity,alignment: .leading)
                            .padding()
                    }
                    
                    NavigationLink {
                        AddFurnizorView()
                    } label: {
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                            .frame(width: 40, height: 40)
                            .background(Color.green)
                            .cornerRadius(.infinity)
                            .padding()
                    }
                    .environmentObject(furnizorViewModel)

                }
                List{
                    ForEach(furnizorViewModel.furnizor,id:\.id){ furnizor in
                        Text(furnizor.nume)
                    }
                }
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
        .navigationBarHidden(true)
        .navigationViewStyle(.stack)
    }
}

struct FurnizorView_Previews: PreviewProvider {
    static var previews: some View {
        FurnizorView()
            .environmentObject(FurnizorViewModel())
            .previewInterfaceOrientation(.landscapeRight)
    }
}
