//
//  MonthView.swift
//  C.A.C
//
//  Created by Csaba Otvos on 19.05.2022.
//

import SwiftUI

struct MonthView: View {
    @Environment (\.presentationMode) var pM
    var column = Array(repeating: GridItem(.flexible()), count: 4)
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("OceanBlue").edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    
                    HStack{
                        Button {
                            pM.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.white)
                                .frame(maxWidth:.infinity,alignment: .leading)
                                .padding()
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                                .frame(width: 40, height: 40)
                                .background(Color.green)
                                .cornerRadius(50)
                                .padding()
                        }
                        
                    }
                    ScrollView{
                        LazyVGrid(columns: column) {
                            ForEach(monthList,id:\.self){ monthList in
                                
                                NavigationLink {
                                    MonthListView(month: monthList)
                                } label: {
                                    monthView(month: monthList)
                                }

                            }
                        }
                        
                        
                        
                    }
                    Spacer()
                }
                
                
                
            }
            .navigationBarHidden(true)
        }
        .navigationBarHidden(true)
        .navigationViewStyle(.stack)
    }
    
    @ViewBuilder
    func monthView(month: Month) -> some View {
        
#if os(macOS)
        VStack{
            Text(month.title)
                .foregroundColor(.white)
                .font(.title.italic())
        }
        .frame(width: 400, height: 400)
        .background(month.backGround)
        .cornerRadius(25)
#else
        VStack{
            Text(month.title)
                .foregroundColor(.white)
                .font(.title.italic())
        }
        .frame(width: 200, height: 200)
        .background(month.backGround)
        .cornerRadius(25)
        .shadow(color: Color.black, radius: 0, x: 2, y: 2)
        
#endif
    }
}

struct MonthView_Previews: PreviewProvider {
    static var previews: some View {
        MonthView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
