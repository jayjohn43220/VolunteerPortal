//
//  ViewController.swift
//  volunteerPortal
//
//  Created by Jayden John on 26/01/1402 AP.
//

import UIKit
import MessageUI
import SwiftSMTP
class ViewController: UIViewController {
    
    
    @IBOutlet weak var fullNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var numberField: UITextField!
    
    
    @IBOutlet weak var veteranFullName: UITextField!
    @IBOutlet weak var veteranEmail: UITextField!
    @IBOutlet weak var veteranNumber: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    let smtp = SMTP(
        hostname: "smtp.gmail.com",     // SMTP server address
        email: "<ENTER DESIRED FROM EMAIL",        // username to login
        password: "<ENTER GOOGLE APP PASSWORD>"            // password to login
    )
    
    
    @IBAction func submitButton(_ sender: UIButton) {
        
        if fullNameField.text == ""{
            print("Empty")
            let alertController = UIAlertController(title: "Field Empty", message: "Please enter your name!", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "OK", style: .default) {
                (action: UIAlertAction!) in
               
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
            let fromname = Mail.User(name: "Project Headspace and Timing", email: "<ENTER INITIAL DESIRED FROM EMAIL>")
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
            
            fullNameField.text = ""
            emailField.text = ""
            numberField.text = ""
            
            let alertController4 = UIAlertController(title: "Thank You!", message: "Thank you for volunteering! We have sent a confirmation email to you.", preferredStyle: .alert)
            let OKAction4 = UIAlertAction(title: "OK", style: .default) {
                (action: UIAlertAction!) in
                
                print("Ok button tapped");
            }
            alertController4.addAction(OKAction4)
            self.present(alertController4, animated: true, completion: nil)
            
        }
    }
    
    
    @IBAction func veteranSubmit(_ sender: UIButton) {
        
        if veteranFullName.text == ""{
            print("Empty")
            let alertController5 = UIAlertController(title: "Veteran Field Empty", message: "Please enter your name!", preferredStyle: .alert)
            let OKAction5 = UIAlertAction(title: "OK", style: .default) {
                (action: UIAlertAction!) in
               
                print("Ok button tapped");
            }
            alertController5.addAction(OKAction5)
            self.present(alertController5, animated: true, completion: nil)
            
        }
        if veteranEmail.text == ""{
            print("Empty")
            let alertController6 = UIAlertController(title: "Veteran Field Empty", message: "Please enter your email!", preferredStyle: .alert)
            let OKAction6 = UIAlertAction(title: "OK", style: .default) {
                (action: UIAlertAction!) in
                
                print("Ok button tapped");
            }
            alertController6.addAction(OKAction6)
            self.present(alertController6, animated: true, completion: nil)
            
        }
        if veteranNumber.text == ""{
            print("Empty")
            let alertController7 = UIAlertController(title: "Veteran Field Empty", message: "Please enter your phone number!", preferredStyle: .alert)
            let OKAction7 = UIAlertAction(title: "OK", style: .default) {
                (action: UIAlertAction!) in
                
                print("Ok button tapped");
            }
            alertController7.addAction(OKAction7)
            self.present(alertController7, animated: true, completion: nil)
            
        }
        else{
            let fullName3 = veteranFullName.text ?? ""
            let email3 = veteranEmail.text ?? ""
            let number3 = veteranNumber.text ?? ""
            
            var fullName2 = veteranFullName.text
            var email2 = veteranEmail.text
            var number2 = veteranNumber.text
            let fromname2 = Mail.User(name: "Project Headspace and Timing", email: "<ENTER INITIAL DESIRED FROM EMAIL>")
            let toname = Mail.User(name: fullName2, email: email3)
            
            let text = "Thank you for signing up for veterans' outreach events at Project Headspace and Timing. Here's what we received:\n" +
            "Full Name: \(fullName2)\n" +
            "Email: \(email2)\n" +
            "Phone Number: \(number2)\n\n" +
            "For help, please visit our website: https://www.projectheadspaceandtiming.org/"
            
            let mail = Mail(
                from: fromname2,
                to: [toname],
                subject: "Veterans' Outreach Signup Confirmation.",
                text: text
            )
            
            
            smtp.send(mail) { (error) in
                if let error = error {
                    print(error)
                }
                
                
            }
        }
        
        let alertController8 = UIAlertController(title: "Thank You!", message: "Thank you veteran for volunteering! We have sent a confirmation email to you.", preferredStyle: .alert)
        let OKAction8 = UIAlertAction(title: "OK", style: .default) {
            (action: UIAlertAction!) in
            
            print("Ok button tapped");
        }
        alertController8.addAction(OKAction8)
        self.present(alertController8, animated: true, completion: nil)
        
        
    }
        
        
        
        
        @IBAction func donateButton(_ sender: UIButton) {
            if let url = URL(string: "https://account.venmo.com/u/ProjectHeadspaceandTiming") {
                UIApplication.shared.open(url)
            }
            
        }
        
        
        @IBAction func suicideHotline(_ sender: UIButton) {
            guard let number = URL(string: "tel://" + "988") else { return }
            UIApplication.shared.open(number)
            
        }
        
        
        
    
    
}
