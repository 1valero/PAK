//
//  ViewController.swift
//  pak
//
//  Created by user137834 on 3/26/18.
//

import UIKit

class InicioVC: UIViewController {

    @IBOutlet weak var btnNavDrawer: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*btnNavDrawer.target = self.revealViewController()
        btnNavDrawer.action = #selector(SWRevealViewController.revealToggle(_:))*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnNavDrawer(_ sender: Any) {
        self.revealViewController().revealToggle(animated: true)
    }
    
}

