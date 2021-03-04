//
//  ThirdViewController.swift
//  APP BANK
//
//  Created by Nighthwtnk on 9/17/19.
//  Copyright © 2019 Nighthwtnk. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    var delegate : canReceive?
    var data = ""


    @IBOutlet weak var lableDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lableDisplay.text = data
        
        if let value = lableDisplay.text{
            var keepData = 0
            keepData = (value as NSString).integerValue
            
            if(keepData<=10000){
                print("Cpmplete")
                lableDisplay.text = "Complete"
            }
            else{
                print("Fail")
                lableDisplay.text = "Unsuccessful"
            }
            
        }
        
        // Do any additional setup after loading the view.
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
