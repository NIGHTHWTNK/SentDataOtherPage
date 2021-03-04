//
//  FristViewController.swift
//  APP BANK
//
//  Created by Nighthwtnk on 9/17/19.
//  Copyright © 2019 Nighthwtnk. All rights reserved.
//

import UIKit

class FristViewController: UIViewController {
    
    
    @IBOutlet weak var segmentOutlet: UISegmentedControl!
    @IBOutlet weak var displayBank: UILabel!
    
    @IBAction func segmentChange(_ sender: UISegmentedControl) {
        switch segmentOutlet.selectedSegmentIndex {
        case 0:
            displayBank.text = "KTB"
        case 1:
            displayBank.text = "KBank"
        case 2:
            displayBank.text = "SCB"
        default:
            break
        }
    }
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func sendButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "sendDataForwords", sender: self)
    }
    override func prepare (for segue:UIStoryboardSegue, sender:Any?){
        if segue.identifier == "sendDataForwords"{
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.data = textField.text!
            secondVC.keepdata = displayBank.text!
           
        }
    }
    func dataReceive(dataFromProtocol : String){
        textField.text = dataFromProtocol
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
