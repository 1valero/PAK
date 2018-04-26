//
//  InicioDemoVC.swift
//  pak
//
//  Created by user137834 on 4/2/18.
//

import UIKit

class InicioDemoVC: UIViewController, UIScrollViewDelegate {
    
    
    @IBOutlet weak var svMain: UIScrollView!
    
    @IBOutlet weak var btnAnuncios: UIButton!
    @IBOutlet weak var btnCatalogo: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(InicioDemoVC.description())

        let v1: Demo1VC = Demo1VC(nibName: "Demo1VC", bundle: nil)
        let v2: Demo2VC = Demo2VC(nibName: "Demo2VC", bundle: nil)
        
        self.addChildViewController(v1)
        self.svMain.addSubview(v1.view)
        v1.didMove(toParentViewController: self)
        
        
        self.addChildViewController(v2)
        self.svMain.addSubview(v2.view)
        v2.didMove(toParentViewController: self)
        
        var v2Frame : CGRect = v2.view.frame
        v2Frame.origin.x = self.view.frame.width
        v2.view.frame = v2Frame
        
        
        v1.lblDemo1.text = "Este texto del Demo1VC se cambio desde el Padre VC"
        v2.lblDemo2.text = "Este texto del Demo2VC tambien se cambio desde el Padre VC"
 
        self.svMain.contentSize = CGSize(width: self.view.frame.width * 2, height: self.view.frame.size.height - 112)
        
        
        performSegue(withIdentifier: "InicioToLista", sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnNavDrawer(_ sender: Any) {
        self.revealViewController().revealToggle(animated: true)
    }
    
    @IBAction func btnAnuncios(_ sender: Any) {
        print("btnAnuncios")
        svMain.setContentOffset(
            CGPoint.init(
                x: 0.0,
                y: svMain.contentOffset.y)
            , animated: true)
        
        btnAnuncios.setTitleColor(#colorLiteral(red: 0.4980392157, green: 0.8235294118, blue: 0.3058823529, alpha: 1), for: .normal)
        btnAnuncios.setBackgroundImage(#imageLiteral(resourceName: "rombo_blanco"), for: .normal)
        btnCatalogo.setTitleColor(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1), for: .normal)
        btnCatalogo.setBackgroundImage(nil, for: .normal)
    }
    
    
    @IBAction func btnCatalogo(_ sender: Any) {
        print("btnCatalogo")
        svMain.setContentOffset(CGPoint.init(
            x: self.view.frame.width,
            y: svMain.contentOffset.y),
                                animated: true)
        
        btnAnuncios.setTitleColor(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1), for: .normal)
        btnAnuncios.setBackgroundImage(nil, for: .normal)
        btnCatalogo.setTitleColor(#colorLiteral(red: 0.4980392157, green: 0.8235294118, blue: 0.3058823529, alpha: 1), for: .normal)
        btnCatalogo.setBackgroundImage(#imageLiteral(resourceName: "rombo_blanco"), for: .normal)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset.x/scrollView.frame.size.width)
        let page = scrollView.contentOffset.x/scrollView.frame.size.width
        
        if page == 0.0 {
            btnAnuncios.setTitleColor(#colorLiteral(red: 0.4980392157, green: 0.8235294118, blue: 0.3058823529, alpha: 1), for: .normal)
            btnAnuncios.setBackgroundImage(#imageLiteral(resourceName: "rombo_blanco"), for: .normal)
            btnCatalogo.setTitleColor(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1), for: .normal)
            btnCatalogo.setBackgroundImage(nil, for: .normal)
        }else if page == 1.0 {
            btnAnuncios.setTitleColor(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1), for: .normal)
            btnAnuncios.setBackgroundImage(nil, for: .normal)
            btnCatalogo.setTitleColor(#colorLiteral(red: 0.4980392157, green: 0.8235294118, blue: 0.3058823529, alpha: 1), for: .normal)
            btnCatalogo.setBackgroundImage(#imageLiteral(resourceName: "rombo_blanco"), for: .normal)
        }
    }

}
