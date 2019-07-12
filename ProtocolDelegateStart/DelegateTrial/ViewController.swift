//
//  ViewController.swift
//  DelegateTrial
//
//  Created by Mohammed Azeem Azeez on 29/06/2019.
//  Copyright © 2019 J'Overt Matics. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var cityText: UILabel!
    @IBOutlet weak var submitButton: UIButton!
   
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    
    @IBAction func searchCityButnClicked(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        self.present(vc, animated: false)
    }
    

    @IBAction func nextVCBtn(_ sender: Any) {
        let alert = UIAlertController(title: "City Selection", message: "You have succesfully submitted your city", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
                
                
            }}))
        self.present(alert, animated: true, completion: nil)
       
    }
    
}

