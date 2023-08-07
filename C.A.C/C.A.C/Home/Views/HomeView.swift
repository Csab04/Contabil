//
//  HomeView.swift
//  C.A.C
//
//  Created by Csaba Otvos on 22.05.2022.
//

import SwiftUI

struct HomeView: View {
    @State var showSetting = false
    @StateObject var furnizorViewModel = FurnizorViewModel()
    var body: some View {
        NavigationView{
            ZStack{
                Color("OceanBlue").edgesIgnoringSafeArea(.all)
                VStack{
                    
                    HStack{
                        Spacer()
                        Text("C.A.C")
                            .foregroundColor(.white)
                            .font(.title.bold().monospaced())
                        
                        Spacer()
                        Button {
                            self.showSetting.toggle()
                        } label: {
                            Image(systemName: "gear")
                                .foregroundColor(.white)
                                .padding()
                        }
                    }
                    
                    
                    
                    HStack{
                        NavigationLink {
                            MonthView()
                        } label: {
                            Text("Nota de Receptie")
                                .foregroundColor(.white)
                               
                        }
                        .environmentObject(furnizorViewModel)
                        
                        
                    }
                    
                    
                    Spacer()
                }
                
            }
            .navigationBarHidden(true)
            .sheet(isPresented: $showSetting) {
                NavigationView{
                    List{
                        NavigationLink {
                            FurnizorView()
                        } label: {
                            Text("Furnizor")
                        }
                         
                        Button {
                            
                        } label: {
                            Text("Sign Out")
                                .foregroundColor(.red)
                        }

 
                    }
                }
            }
        }
        .navigationBarHidden(true)
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
