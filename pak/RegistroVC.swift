//
//  RegistroVC.swift
//  pak
//
//  Created by user137834 on 3/31/18.
//

import UIKit

class RegistroVC: UIViewController {
    
    @IBOutlet var dobView: UIView!
    
    @IBOutlet weak var vfxView: UIVisualEffectView!
    @IBOutlet weak var dpDOB: UIDatePicker!
    @IBOutlet weak var txtDOB: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dobCancel(_ sender: Any) {
        self.view.sendSubview(toBack: vfxView)
        self.dobView.removeFromSuperview()
    }
    @IBAction func dobOK(_ sender: Any) {
        self.view.sendSubview(toBack: vfxView)
        self.dobView.removeFromSuperview()
        print(dpDOB.date.description)
        txtDOB.text = dpDOB.date.description
    }
    @IBAction func btnBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func txtDOB(_ sender: Any) {
        self.dismissKeyboard()
        print("Editing began")
        self.view.bringSubview(toFront: vfxView)
        self.view.addSubview(dobView)
        dobView.center = super.view.center
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
