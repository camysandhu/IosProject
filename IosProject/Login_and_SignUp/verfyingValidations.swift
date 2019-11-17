//
//  verfyingValidations.swift
//  IosProject
//
//  Created by Sandeep Jangra on 2019-11-13.
//  Copyright © 2019 Camy. All rights reserved.
//

import Foundation
extension String
{
//https://stackoverflow.com/questions/25471114/how-to-validate-an-e-mail-address-in-swift
func verifyingEmail() -> Bool{
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: self)
}
    //https://stackoverflow.com/questions/39284607/how-to-implement-a-regex-for-password-validation-in-swift
        
    func verifyingPassword() -> Bool{
            
            let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
            return passwordTest.evaluate(with: self)
        // Minimum one uppercase// Minimum one digit// Minimum one lowercase// 8 characters total
        }

    func addingDollar() ->String
    {
        return ("$\(self)")
    }
}
