//
//  SecondViewController.swift
//  APP BANK
//
//  Created by Nighthwtnk on 9/17/19.
//  Copyright © 2019 Nighthwtnk. All rights reserved.
//

import UIKit
protocol canReceive {
    func dataReceive(dataFromProtocol: String)
}

class SecondViewController: UIViewController {
    var delegate : canReceive?
    var data = ""
    var keepdata = ""
    

    @IBOutlet weak var bankDisplay: UILabel!
    @IBOutlet weak var moneyDisplay: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moneyDisplay.text = data
        bankDisplay.text = keepdata

        // Do any additional setup after loading the view.
    }
    @IBAction func backPage1(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func sendButtonPressed(_ sender: Any) {
         performSegue(withIdentifier: "sendDataForwords", sender: self)
    }
    override func prepare (for segue:UIStoryboardSegue, sender:Any?){
        if segue.identifier == "sendDataForwords"{
            let thirdVC = segue.destination as!ThirdViewController
            
            thirdVC.data = moneyDisplay.text!
           
            
        }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
