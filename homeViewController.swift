//
//  homeViewController.swift
//  volunteerPortal
//
//  Created by hackathon on 26/01/1402 AP.
//

import UIKit

class homeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBAction func suicideHotline(_ sender: UIButton) {
        guard let number = URL(string: "tel://" + "988") else { return }
        UIApplication.shared.open(number)
        
    }
    
    @IBAction func aboutusButton(_ sender: UIButton) {
        if let url = URL(string: "https://www.projectheadspaceandtiming.org") {
            UIApplication.shared.open(url)
        }
    }
}
