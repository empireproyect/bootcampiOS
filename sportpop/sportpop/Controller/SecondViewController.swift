//
//  SecondViewController.swift
//  sportpop
//
//  Created by Ricardo Hernandez on 13/10/21.
//

import UIKit
import FirebaseAuth

enum Providertype: String {
    case basic
}
private let provider: Providertype = .basic

class SecondViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var UserName: UITextField!
    @IBOutlet weak var FirstName: UITextField!
    @IBOutlet weak var LastName: UITextField!
    @IBOutlet weak var SingUp: UIButton!
    
    private let terciaryColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1)
    //let loginViewModel =
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        title = "Autenticatión"
        guard let username = UserName.text , let password = password.text else { return }
        
        if username == username && username != nil {
        
    
        } else {
            
        }
    
        //UserName?.placeholder = "User Name placeholder"
        //initializeData()
      
        

    }
   
    
    @IBAction func singUp(_ sender: Any){
        
    }
    
    
    //2
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        //initializeData()
    
    }
    
    //3
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        // Do any additional setup after loading the view.
    
        //initializeData()
    }
    
    //4
    override func viewWillDisappear(_ animated: Bool) {
        
        super.viewWillDisappear(animated)
     
    }
    
    //5
    override func viewDidDisappear(_ animated: Bool) {
        
        super.viewDidDisappear(animated)
        
       
    }
    
//    private func initializeData() -> Any {
//
//        UserName?.placeholder = "pepeppepe"
//        var user = UserName?.placeholder
//        guard user != nil else { return NSError() }
//
//        user = "User name por fin"
//        FirstName?.placeholder = "First Namedddddd"
//
//        Email?.layer.borderColor = terciaryColor.cgColor
//        Email?.layer.cornerRadius = 3
//        Email?.clipsToBounds = true
//        print("valor de radius email \(String(describing: Email?.layer.cornerRadius))")
//
//        return 0
//
//    }

}
