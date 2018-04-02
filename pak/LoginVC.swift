//
//  LoginVC.swift
//  pak
//
//  Created by user137834 on 3/30/18.
//

import UIKit
import FacebookCore
import FacebookLogin
import GoogleSignIn

class LoginVC: UIViewController, GIDSignInUIDelegate {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print(LoginVC.description())
        
        GIDSignIn.sharedInstance().uiDelegate = self
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnNavDrawer(_ sender: Any) {
        self.revealViewController().revealToggle(animated: true)
    }
    
    @IBAction func btnFacebook(_ sender: Any) {
        let loginManager = LoginManager()
        
        loginManager.logIn(readPermissions: [.publicProfile], viewController : self) { loginResult in
            switch loginResult {
            case .failed(let error):
                print("Facebook: Error")
                print(error)
            case .cancelled:
                print("Facebook: User cancelled login")
            case .success(let grantedPermissions, let declinedPermissions, let accessToken):
                print("Facebook: Logged in")
                self.requestGraph()
            }
        }
    }
    func requestGraph(){
        let connection = GraphRequestConnection()
        connection.add(GraphRequest(graphPath: "/me")) { httpResponse, result in
            switch result {
            case .success(let response):
                print("Graph Request Succeeded: \(response)")
                Preferences.init().setSession(value: true)
                self.revealViewController().revealToggle(animated: true)
            case .failed(let error):
                print("Graph Request Failed: \(error)")
            }
        }
        connection.start()
    }
    @IBAction func btnGoogle(_ sender: Any) {
        GIDSignIn.sharedInstance().signIn()
    }
    
}
