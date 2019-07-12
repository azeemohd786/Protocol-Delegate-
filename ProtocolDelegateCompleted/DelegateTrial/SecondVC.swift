//
//  SecondVC.swift
//  DelegateTrial
//
//  Created by Mohammed Azeem Azeez on 29/06/2019.
//  Copyright © 2019 J'Overt Matics. All rights reserved.
//

import UIKit

class SecondVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
   
    //Declare the delegate property in your SecondVC
    var delegate : DataDelegate?
    var data : String = "Waterford"
    
    var cityArray: [String]? = ["Amsterdam", "London", "Paris", "Dublin", "Wexford", "Lemirick", "Waterford", "North Westpholia", "Munich", "Zurich"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityArray!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // create a new cell if needed or reuse an old one
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! Cell
        // set the text from the data model
        cell.cityNames?.text = self.cityArray![indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 65.0
    }
    //Code Cell Selected
       func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
         let currentCell = tableView.cellForRow(at: indexPath!) as! Cell
         print(currentCell.cityNames!.text!)
         self.delegate?.sendData(cityArray: currentCell.cityNames!.text!)
        self.dismiss(animated: false, completion: nil)

    }
   

    @IBAction func doneBtnPressed(_ sender: Any) {
      
        self.dismiss(animated: false, completion: nil)
    }
    

}

class Cell: UITableViewCell {
    @IBOutlet weak var cityNames: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.accessoryType = selected ? .checkmark : .none
       
    }
    }
