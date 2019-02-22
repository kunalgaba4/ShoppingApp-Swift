//
//  IDisplay.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by Jagmeet Kaur on 2019-02-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

enum OrderError: Error
{
    case invalidQuantity (newQty: Int)
    case maxItemCountReached 
}
