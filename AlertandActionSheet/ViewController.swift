//
//  ViewController.swift
//  AlertandActionSheet
//
//  Created by Kyle on 2016/6/13.
//  Copyright © 2016年 Alphacamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func alertButton(sender: AnyObject) {
    
        let cancle = UIAlertAction(title: "Cancle", style: .Cancel, handler: nil)
        
        let action1 = UIAlertAction(title: "周子瑜", style: .Default) { (UIAlertAction) in
            let alertResault = UIAlertController(title: "結局", message: "有情人終成眷屬", preferredStyle: .Alert)
            
            alertResault.addAction(cancle)
            
            self.presentViewController(alertResault, animated: true, completion: nil)
        }
        
        let action2 = UIAlertAction(title: "林志玲", style: .Default) { (UIAlertAction) in
            let alertResault = UIAlertController(title: "結局", message: "有情人終成眷屬", preferredStyle: .Alert)
            
            alertResault.addAction(cancle)
            
            self.presentViewController(alertResault, animated: true, completion: nil)
        }
        
        
        
        let alert = UIAlertController(title: "一輩子的選擇", message: "請問你想不想談戀愛？？", preferredStyle: .Alert)
        
        let actionYes = UIAlertAction(title: "Yes", style: .Default) { (UIAlertAction) in
            let alertagain = UIAlertController(title: "任君挑選", message: "請問你想跟誰談戀愛？？", preferredStyle: .ActionSheet)
            alertagain.addAction(action1)
            alertagain.addAction(action2)

            
            self.presentViewController(alertagain, animated: true, completion:nil)
    
            
        }
        
        let actionNo = UIAlertAction(title: "No", style: .Default, handler: nil)
        
        alert.addAction(actionYes)
        alert.addAction(actionNo)
        self.presentViewController(alert, animated: true, completion: nil)
        
    }

}

