//
//  Enum.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by Jagmeet Kaur on 2019-02-22.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

enum LoginStatus : Int
{
    case Not_Verified
    case Verified
    
}


enum OrderError: Error{
    case invalidQuantity (newQty: Int)
    case maxItemCountReached
}

enum Products: String{
    case Hard_Disk
    case CD
    case DVD
}
