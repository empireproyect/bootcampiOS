//
//  ViewController.swift
//  sportpop
//
//  Created by Ricardo Hernandez on 18/9/21.
//
//import Foundation
import UIKit
import FirebaseAuth

enum ProviderType: String {
    case basic
}

class ViewController: UIViewController {

    @IBOutlet weak var ButtonLogin: UIButton!
    @IBOutlet weak var launchSingUp: UIButton!
    @IBOutlet weak var UsernameTextView: UITextField!
    @IBOutlet weak var Password: UITextField!
    

    
    private let primaryColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha: 1)
    private let secondaryColor = UIColor(red: 255/255, green: 255/175, blue: 255/255, alpha: 1)
    private let terciaryColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1)
    
    private let email: String
    private let provider: ProviderType
    
    init(email: String, provider: ProviderType) {
        
        self.email = email
        self.provider = provider
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
 
    
    // MARK: - Life Cyle
    
    //1
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    
        initializeData()

    }
    
    
    @IBAction func ButtonLogin(_ sender: Any) {
        
        if let email = UsernameTextView.text, let password  = Password.text {
            
            
        
        }
        
    }
    
    @IBAction func launchSingUp(_ sender: Any) {
        
        if let email = UsernameTextView.text, let password  = Password.text {
            
            Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
                
                if let result = result, error == nil {
                    
                    self.navigationController?.pushViewController(SecondViewController (email: result.user.email, password: .basic), animated: true)
                    
                } else {
                    //alert con pop-up
                    let alertContoller = UIAlertController(title: "Error", message: "Se ha producido un error registrando el usuario", preferredStyle: .alert)
                    alertContoller.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    
                    self.present(alertContoller, animated: true, completion: nil)
                    
                }
            }
        
        }
        
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
        UsernameTextView?.placeholder = "Username"
        Password?.placeholder = "Password"
        
        
        
        
        //Username?.round()
      

        UsernameTextView?.layer.borderColor = terciaryColor.cgColor
        UsernameTextView?.layer.borderWidth = 2
        UsernameTextView?.layer.cornerRadius = 3
        UsernameTextView?.clipsToBounds = false

        Password?.layer.borderColor = terciaryColor.cgColor
        Password?.layer.borderWidth = 2
        Password?.layer.cornerRadius = 3
        Password?.clipsToBounds = true

        ButtonLogin.layer.borderColor =  secondaryColor.cgColor
        ButtonLogin.setTitleColor(secondaryColor, for: .normal)
        ButtonLogin.layer.cornerRadius = 3
        ButtonLogin.clipsToBounds = true
        
        launchSingUp?.layer.borderColor = terciaryColor.cgColor
        //launchSingUp?.layer.borderWidth = 2
        launchSingUp?.setTitleColor(secondaryColor, for: .normal)
        launchSingUp?.layer.cornerRadius = 3
        launchSingUp?.clipsToBounds = true
        
        
        
        
//        loginViewModel.delegate = self
        
    }
    
    //MARK: - IBAction
    @IBAction func Login(_ sender: Any) {
        
    }
        
        
        
       
    class login: LoginFunctionProtocol {
        func login(username: String?, password: String?, type: LoginType) {
        
        }
        
    
            //var res = login(UsernameTextView.hasText, Password)
            
           
            
            
          
           
           
            
            //func login(username: String?, password: String?, type: LoginType) -> Int {
              
            //convenience init (username: String , password: String, type: LoginType)
            
            
                
                //funcion de login, falta implementar
            
            
            
       
        
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
 
    
