//
//  ViewController.swift
//  sportpop
//
//  Created by Ricardo Hernandez on 18/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ButtonLogin: UIButton!
    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    //let loginViewModel =
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
       initializeData()
    }
    
    private func initializeData() {
        
        //Playholder text
        Username?.placeholder = "Userndfdame"
        Password?.placeholder = "Passwdfdord"
        
        
//        loginViewModel.delegate = self
        
    }
    
    //MARK: - IBAction
    @IBAction func singNormalButton(_ sender: Any) {
        
       
        /*
       loginViewModel.login(username: Username.text, password: Password.text, type: String)
    }
 */
    
   


}



}

