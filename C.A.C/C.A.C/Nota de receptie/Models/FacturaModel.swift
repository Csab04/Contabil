//
//  FacturaModel.swift
//  C.A.C
//
//  Created by Csaba Otvos on 19.05.2022.
//

import Foundation
import SwiftUI

struct Factura:Identifiable,Codable{
    var id:String
    var nume:String
    var um: String
    var cantitate: Double
    var pretDeCumparare:Double
    var pretDeValoare:Double
}
