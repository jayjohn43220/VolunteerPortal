//
//  ViewController.swift
//  volunteerPortal
//
//  Created by hackathon on 26/01/1402 AP.
//

import UIKit
import MessageUI
import SwiftSMTP
class ViewController: UIViewController {
    
    
    @IBOutlet weak var fullNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var numberField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    let smtp = SMTP(
        hostname: "smtp.gmail.com",     // SMTP server address
        email: "jayjohn43220@gmail.com",        // username to login
        password: "eeulrgzldasuwnzn"            // password to login
    )

    
    @IBAction func submitButton(_ sender: UIButton) {
        
        if fullNameField.text == ""{
            print("Empty")
            let alertController = UIAlertController(title: "Field Empty", message: "Please enter your name!", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "OK", style: .default) {
                (action: UIAlertAction!) in
                // Code in this block will trigger when OK button tapped.
                print("Ok button tapped");
            }
            alertController.addAction(OKAction)
            self.present(alertController, animated: true, completion: nil)
        }
        
        else if emailField.text == ""{
            print("Empty")
            let alertController2 = UIAlertController(title: "Field Empty", message: "Please enter your email!", preferredStyle: .alert)
            let OKAction2 = UIAlertAction(title: "OK", style: .default) {
                (action: UIAlertAction!) in
                // Code in this block will trigger when OK button tapped.
                print("Ok button tapped");
            }
            alertController2.addAction(OKAction2)
            self.present(alertController2, animated: true, completion: nil)
        }
        else if numberField.text == ""{
            print("Empty")
            let alertController3 = UIAlertController(title: "Field Empty", message: "Please enter your phone number!", preferredStyle: .alert)
            let OKAction3 = UIAlertAction(title: "OK", style: .default) {
                (action: UIAlertAction!) in
                // Code in this block will trigger when OK button tapped.
                print("Ok button tapped");
            }
            alertController3.addAction(OKAction3)
            self.present(alertController3, animated: true, completion: nil)
        }
        else{
            let fullName2 = fullNameField.text ?? ""
            let email2 = emailField.text ?? ""
            let number2 = numberField.text ?? ""
            
            var fullName = fullNameField.text
            var email = emailField.text
            var number = numberField.text
            let fromname = Mail.User(name: "Project Headspace and Timing", email: "jayjohn43220@gmail.com")
            let toname = Mail.User(name: fullName, email: email2)
            


            let text = "Thank you for signing up to volunteer at Project Headspace and Timing. Here's what we received:\n" +
                "Full Name: \(fullName2)\n" +
                "Email: \(email2)\n" +
                "Phone Number: \(number2)\n\n" +
                "For help, please visit our website: https://www.projectheadspaceandtiming.org/"

            let mail = Mail(
                from: fromname,
                to: [toname],
                subject: "Thank You for Volunteering!.",
                text: text
            )
          
            
             smtp.send(mail) { (error) in
              if let error = error {
                 print(error)
                }

                 
            }
            
            let alertController4 = UIAlertController(title: "Thank You!", message: "Thank you for volunteering! We have sent a confirmation email to you.", preferredStyle: .alert)
            let OKAction4 = UIAlertAction(title: "OK", style: .default) {
                (action: UIAlertAction!) in
                // Code in this block will trigger when OK button tapped.
                print("Ok button tapped");
            }
            alertController4.addAction(OKAction4)
            self.present(alertController4, animated: true, completion: nil)
            
        }
    }
    
}
