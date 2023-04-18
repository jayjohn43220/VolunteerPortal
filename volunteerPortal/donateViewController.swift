//
//  donateViewController.swift
//  volunteerPortal
//
//  Created by Jayden John on 26/01/1402 AP.
//

import UIKit
import SwiftSMTP
class donateViewController: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    let smtp = SMTP(
        hostname: "smtp.gmail.com",     // SMTP server address
        email: "<ENTER DESIRED FROM EMAIL",        // username to login
        password: "<ENTER GOOGLE APP PASSWORD>"            // password to login
    )
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBAction func donateButton(_ sender: UIButton) {
        if let url = URL(string: "https://account.venmo.com/u/ProjectHeadspaceandTiming") {
            UIApplication.shared.open(url)
        }
        
    }
    @IBAction func venmoDemo(_ sender: UIButton) {
        var email = emailField.text ?? ""
        
        let fromname2 = Mail.User(name: "Project Headspace and Timing", email: "<ENTER INITIAL DESIRED FROM EMAIL>")
        let toname = Mail.User(name: "Test Venmo Receipt", email: email)
        
        
        let text = "Thank you for your donation of $25! You can be rest assured the money will be put to good use.\n\n" + "For help, please visit our website: https://www.projectheadspaceandtiming.org/"
        
        let mail = Mail(
            from: fromname2,
            to: [toname],
            subject: "Venmo Demo Receipt",
            text: text
        )
        
        
        smtp.send(mail) { (error) in
            if let error = error {
                print(error)
            }
            
        }
        emailField.text = ""
    let alertController9 = UIAlertController(title: "Thank You!", message: "Thank you for the donation! We have sent a receipt to your email", preferredStyle: .alert)
        let OKAction9 = UIAlertAction(title: "OK", style: .default) {
            (action: UIAlertAction!) in
             
            print("Ok button tapped");
        }
        alertController9.addAction(OKAction9)
        self.present(alertController9, animated: true, completion: nil)
        
    }
}
