//
//  FurnizorModel.swift
//  C.A.C
//
//  Created by Csaba Otvos on 22.05.2022.
//

import Foundation
import SwiftUI

struct Furnizor:Identifiable,Codable{
    
    var id: String
    var nume: String
    var tip:String
    var numarDeLaRC:Int
    var cif:Int
    var tara: String
    var judet:String
    var adresa: String
    
}


