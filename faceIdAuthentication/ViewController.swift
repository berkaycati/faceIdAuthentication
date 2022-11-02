//
//  ViewController.swift
//  faceIdAuthentication
//
//  Created by Berkay on 3.09.2022.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func toSignInClicked(_ sender: Any) {
        
        let authContext = LAContext()
        var error : NSError?
        authContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error)
        authContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "xx") { successs, error in
            if successs == true {
                DispatchQueue.main.async {
                    self.performSegue(withIdentifier: "toSecondVC", sender: nil)
                }
            } else {
                print("MXe3WnfMC1tUZUkCZIHXE9T6HXppTXsE")
            }
        }
    }
}
    


