//
//  AddFurnizorView.swift
//  C.A.C
//
//  Created by Csaba Otvos on 24.05.2022.
//

import SwiftUI

struct AddFurnizorView: View {
    @EnvironmentObject var furnizorViewModel : FurnizorViewModel
    @State var nume = ""
    @State   var tip = ""
    @State  var numarDeLaRC = 0
    @State  var cif = 0
    @State  var tara = ""
    @State  var judet = ""
    @State var adresa = ""
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Text("Adauga furnizor")
                        .font(.title.bold().italic())
                        .padding()
                    Button {
                        furnizorViewModel.addFurnizor(nume: nume, tip: tip, nRC: numarDeLaRC, cif: cif, tara: tara, judet: judet, adresa: adresa)
                    } label: {
                        Text("Save")
                            .foregroundColor(.white)
                            .frame(width: 130, height: 50)
                            .background(Color.indigo)
                            .cornerRadius(.infinity)
                            .frame(maxWidth:.infinity,alignment: .trailing)
                            .padding()
                    }
                }
                ScrollView{
                Text("Datele Firmei")
                    .font(.title.bold())
                    
                HStack(spacing:15){
                    EmailTextFieldStyle(name: "Nume", width: 350, height: 50, text: nume)
                    EmailTextFieldStyle(name: "Tip Firmei", width: 250, height: 50, text: tip)
                   
                }
               
                  
                    HStack(spacing:15){
                NumberTextField(name: "Numar de la Registrul Comertului", number: numarDeLaRC, width: 300, height: 50)
                    
                    NumberTextField(name: "Cif/Cui", number: cif, width: 300, height: 50)
                    }
                    
                
                Text("Regional")
                    .font(.title.bold())
                    
                HStack(spacing:30){
                    
                    EmailTextFieldStyle(name: "Judet", width: 250, height: 50, text: judet)
                    EmailTextFieldStyle(name: "Adresa", width: 250, height: 50, text: adresa)
                }
                    EmailTextFieldStyle(name: "Tara", width: 350, height: 50, text: tara)
                
                }
                Spacer()
            }
        }
    }
}

struct AddFurnizorView_Previews: PreviewProvider {
    static var previews: some View {
        AddFurnizorView()
            .environmentObject(FurnizorViewModel())
            .previewInterfaceOrientation(.landscapeRight)
    }
}
