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
    
    private let primaryColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha: 1)
    private let secondaryColor = UIColor(red: 255/255, green: 255/175, blue: 255/255, alpha: 1)
    private let terciaryColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1)
    
    //let loginViewModel =
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        Username?.layer.borderColor = terciaryColor.cgColor
        Username?.layer.borderWidth = 2
        Username?.layer.cornerRadius = 3
        Username?.clipsToBounds = false
        
        Password?.layer.borderColor = terciaryColor.cgColor
        Password?.layer.borderWidth = 2
        Password?.layer.cornerRadius = 3
        Password?.clipsToBounds = true
        
        ButtonLogin.layer.borderColor =  secondaryColor.cgColor
        ButtonLogin.setTitleColor(secondaryColor, for: .normal)
        ButtonLogin.layer.cornerRadius = 3
        ButtonLogin.clipsToBounds = true
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
       initializeData()
    }
    
    private func initializeData() {
        
        //Playholder text
        Username?.placeholder = "Username"
        Password?.placeholder = "Password"
        
        
//        loginViewModel.delegate = self
        
    }
    
    //MARK: - IBAction
    @IBAction func Login(_ sender: Any) {
        
       
        
      //  LoginFunctionProtocol.login(username: Username.text, password: Password.text, type: String)
        class login: LoginFunctionProtocol {
            
            var user: String?
            var password: String?
            
            func login(username: String?, password: String?, type: LoginType) {
                //funcion de login, falta implementar
            }
            
        }
        
        class loginResult: LoginResultProtocol {
            //funcion de resultado del login, falta implementar
            
            func success(user: User?, type: LoginType) {
                //aplicamos flujo del login correcto
            }
            
            func error(error: Error, type: LoginType) {
                //hubo error, definir los errores, añadir los de firebase
                NSError(domain: "Usuario/contraseña vacia", code: 1, userInfo: nil)
            }
            
           
        }
    }
 
    
   


}





