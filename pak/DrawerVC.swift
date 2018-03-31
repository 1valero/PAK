//
//  DrawerVC.swift
//  pak
//
//  Created by user137834 on 3/27/18.
//

import UIKit

class DrawerVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var menuArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //if session true
        //menuArray = ["m_01", "m_02", "m_03", "m_04", "m_05", "m_06"]
        //else
        menuArray = ["m_01", "m_02", "m_06"]
        
        //self.revealViewController().rearViewRevealWidth = self.view.frame.width - 44
        self.revealViewController().rearViewRevealWidth = UIScreen.main.bounds.width - 44
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnProfile(_ sender: Any) {
        print("btnProfile Action")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: menuArray[indexPath.row], for: indexPath) as UITableViewCell
        return cell
    }

}

