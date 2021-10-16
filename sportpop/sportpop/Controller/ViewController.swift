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





