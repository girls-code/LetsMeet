//
//  SignUpViewController.swift
//  letsMeet
//
//  Created by jsood on 8/31/18.
//  Copyright © 2018 Jigyasaa Sood. All rights reserved.
//

import UIKit
import Parse

class SignUpViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmPasswordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapSignUp(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let newUser = User()
        newUser.username = usernameField.text
        newUser.password = passwordField.text
        newUser.signUpInBackground{ (success:Bool, error:Error?) -> Void in
            if success{
                print("yay created a new user!")
                self.dismiss(animated: true, completion: nil)
                appDelegate.login()
                
            } else{
                print(error?.localizedDescription)
                if error?._code == 202{
                    print("Username is taken")
                }
            }
        }
    }
    
    @IBAction func didTapLoginFromSignUp(_ sender: Any) {
        self.dismiss(animated: true, completion: nil);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
