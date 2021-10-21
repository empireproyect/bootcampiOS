//
//  ViewController.swift
//  sportpop
//
//  Created by Ricardo Hernandez on 18/9/21.
//
import Foundation
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ButtonLogin: UIButton!
    @IBOutlet weak var launchSingUp: UIButton!
    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    private let primaryColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha: 1)
    private let secondaryColor = UIColor(red: 255/255, green: 255/175, blue: 255/255, alpha: 1)
    private let terciaryColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1)
    
    //let loginViewModel =
    
    // MARK: - Life Cyle
    
    //1
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
        initializeData()

    }
    
    @IBAction func ButtonLogin(_ sender: Any){
        
    }
    @IBAction func launchSingUp(_ sender: Any){
        
    }
    
    
    //2
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
      
    }
    
    //3
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
      
    }
    
    //4
    override func viewWillDisappear(_ animated: Bool) {
        
        super.viewWillDisappear(animated)
     
    }
    
    //5
    override func viewDidDisappear(_ animated: Bool) {
        
        super.viewDidDisappear(animated)
        
       
    }
    
    private func initializeData() {
        
        //Playholder text
        Username?.placeholder = "Username"
        Password?.placeholder = "Password"
        
        Username?.round()
      
//
//        Username?.layer.borderColor = terciaryColor.cgColor
//        Username?.layer.borderWidth = 2
//        Username?.layer.cornerRadius = 3
//        Username?.clipsToBounds = false
//
//         Password?.layer.borderColor = terciaryColor.cgColor
//         Password?.layer.borderWidth = 2
//         Password?.layer.cornerRadius = 3
//         Password?.clipsToBounds = true
//
//         ButtonLogin.layer.borderColor =  secondaryColor.cgColor
//         ButtonLogin.setTitleColor(secondaryColor, for: .normal)
//         ButtonLogin.layer.cornerRadius = 3
//         ButtonLogin.clipsToBounds = true
        
        
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





