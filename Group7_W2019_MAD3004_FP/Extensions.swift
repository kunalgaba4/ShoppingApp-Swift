//
//  Extensions.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by Jagmeet Kaur on 2019-02-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation


extension String {
    func isValidEmail() -> Bool{
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    
    func isValidPassword() -> Bool{
        let passwordRegEx = "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}"
        
        let passwordTest = NSPredicate(format:"SELF MATCHES %@",  passwordRegEx)
        return passwordTest.evaluate(with: self)
    }
    
   
}

extension Float{
    func currency()-> String{
        return "$\(self)"
    }
}

extension Int{
    func isValidCard() -> Bool{
        var counter = 0
        var temp  = self
        
        while( temp != 0 ){   counter+=1
            temp = temp/10
            
        }
        if(counter == 16)
        {
            return true
        }
        return false
    }
    
    func currency()-> String{
        return "$\(self)"
    }
}

extension Date{
    func formatDate()-> String{
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "MMM dd,yyyy"
        return dateFormatterPrint.string(from: self)
    }
}

