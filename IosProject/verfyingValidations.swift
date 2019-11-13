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
}
