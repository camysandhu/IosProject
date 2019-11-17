

import UIKit

class UpdateProfileViewController: UIViewController {
    var updateUserData = UserDefaults.standard

    @IBOutlet weak var udUserTxt: UITextField!
       @IBOutlet weak var upPassTxt: UITextField!
       @IBOutlet weak var upEmailTxt: UITextField!
       @IBOutlet weak var upAddressTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

      
        // Do any additional setup after loading the view.
    }
    @objc func saveButton(){
        for i in 0...3{
            switch i {
                case 0:
                    if ((udUserTxt.text?.count)! > 5)
                    {
        updateUserData.set(udUserTxt.text, forKey: "username")
                }
                
                case 1:
                    if (upPassTxt.text?.verifyingPassword())!{
                        updateUserData.set(udUserTxt.text, forKey: "password")
                    }
                case 2:
                    if (upEmailTxt.text?.verifyingEmail())!{
                        updateUserData.set(udUserTxt.text, forKey: "email")
                    }
                
                
                
                
                
            }}

}
}
