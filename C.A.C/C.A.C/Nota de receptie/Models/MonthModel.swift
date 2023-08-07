//
//  MonthModel.swift
//  C.A.C
//
//  Created by Csaba Otvos on 19.05.2022.
//

import Foundation
import SwiftUI

struct Month : Identifiable,Hashable {
    var id :String
    var title: String
    var backGround: Color
}
 

var monthList = [

    Month(id:UUID().uuidString,title: "Ianuarie", backGround: .blue.opacity(0.6)),
    Month(id:UUID().uuidString,title: "Februarie", backGround: .blue.opacity(0.8)),
    Month(id:UUID().uuidString,title: "Martie", backGround: .green.opacity(0.4)),
    Month(id:UUID().uuidString,title: "Aprilie", backGround: .green.opacity(0.6)),
    Month(id:UUID().uuidString,title: "Mai", backGround: .green.opacity(0.8)),
    Month(id:UUID().uuidString,title: "Iunie", backGround: .green.opacity(1.0)),
    Month(id:UUID().uuidString,title: "Iulie", backGround: .green.opacity(1.2)),
    Month(id:UUID().uuidString,title: "August", backGround: .green.opacity(1.4)),
    Month(id:UUID().uuidString,title: "Septembrie", backGround: .brown.opacity(0.8)),
    Month(id:UUID().uuidString,title: "Octombrie", backGround: .brown.opacity(0.6)),
    Month(id:UUID().uuidString,title: "Noiembrie", backGround: .brown.opacity(0.4)),
    Month(id:UUID().uuidString,title: "Decembrie", backGround: .blue.opacity(0.4))
]
