//
//  ViewController.swift
//  DelegateTrial
//
//  Created by Mohammed Azeem Azeez on 29/06/2019.
//  Copyright © 2019 J'Overt Matics. All rights reserved.
//

import UIKit
protocol DataDelegate {
    func sendData(cityArray : String)
    }

class ViewController: UIViewController, DataDelegate {
    
    
    
    @IBOutlet weak var cityText: UILabel!
    @IBOutlet weak var submitButton: UIButton!
   
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.submitButton.isEnabled = false
        self.submitButton.backgroundColor = UIColor.lightGray
    }
    func sendData(cityArray data: String) {
        if data != "" {
            self.cityText.text! = data
            print(data)
            self.submitButton.isEnabled = true
            self.submitButton.backgroundColor = UIColor.blue
        }
    }
    
    
    @IBAction func searchCityButnClicked(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        vc.delegate = self
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

