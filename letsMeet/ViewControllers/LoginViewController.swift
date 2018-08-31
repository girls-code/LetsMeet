//
//  LoginViewController.swift
//  letsMeet
//
//  Created by jsood on 8/31/18.
//  Copyright © 2018 Jigyasaa Sood. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func didTapLogin(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        if(usernameField.text?.isEmpty == true || passwordField.text?.isEmpty == true || (usernameField.text?.isEmpty == true && passwordField.text?.isEmpty == true)){
            print("incorrect login credentials, try again")
            let alertController = UIAlertController(title: "Empty Field(s)", message: "Please enter your username and password" , preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) {(action) in}
            alertController.addAction(cancelAction)
            let OKAction = UIAlertAction(title: "OK", style: .default){ (action) in }
            alertController.addAction(OKAction)
            self.present(alertController, animated: true)
        }
        else{
            User.logInWithUsername(inBackground: usernameField.text!, password: passwordField.text!) { (user: PFUser?, error:Error?) -> Void in
                if user != nil {
                    appDelegate.login()
                    print("you are logged in!")
                } else {
                    let alertController = UIAlertController(title: "Login Error", message: "\(error?.localizedDescription ?? "Please check your username and password")" , preferredStyle: .alert)
                    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) {(action) in}
                    alertController.addAction(cancelAction)
                    let OKAction = UIAlertAction(title: "OK", style: .default){ (action) in }
                    alertController.addAction(OKAction)
                    self.present(alertController, animated: true)
                }
                
                //self.performSegue(withIdentifier: "loginSegue", sender: nil)
            }
            
        }
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
