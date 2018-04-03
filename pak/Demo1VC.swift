//
//  Demo1VC.swift
//  pak
//
//  Created by user137834 on 4/2/18.
//

import UIKit

class Demo1VC: UIViewController {

    @IBOutlet weak var lblDemo1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func testing(){
        print("Testing")
        //lblDemo1.text = "Testing"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("demo1vc didAppear")
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
