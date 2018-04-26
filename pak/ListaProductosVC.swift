//
//  ListaProductosVC.swift
//  pak
//
//  Created by user137834 on 4/10/18.
//

import Foundation

class ListaProductosVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    var demoArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        demoArray = ["Cat1", "Cat2", "Cat3", "Cat4"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*@IBAction func btnNavDrawer(_ sender: Any) {
        self.revealViewController().revealToggle(animated: true)
    }*/
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return demoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : CategoriasCell
        
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell_categoria", for: indexPath) as! CategoriasCell
        cell.lblCategoria.text = demoArray[indexPath.row]
        
        return cell
    }
    
    
}
