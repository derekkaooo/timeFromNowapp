//
//  ViewController.swift
//  timeFromNowapp
//
//  Created by Derek on 2018/7/22.
//  Copyright © 2018年 Derek. All rights reserved.
//

import UIKit


var goal: Date!
var now: Date!

class ViewController: UIViewController {
    
    
    @IBOutlet weak var quite: UIImageView!
    @IBOutlet weak var goodMood: UIImageView!
    
    @IBOutlet weak var MyDate: UIDatePicker!
    
    @IBOutlet weak var goalDate: UITextField!
    
    @IBOutlet weak var nowDate: UITextField!
    
    @IBOutlet weak var remainDay: UITextField!
    
    @IBAction func myDatePicker(_ sender: UIDatePicker) {
        //現在時間
        let now = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy MM dd"
        //現在時間轉成字串
        let time = formatter.string(from: now)
        nowDate.text = time
        //目標時間
        goal = sender.date
        //目標時間轉成字串用goalDate顯示
        goalDate.text = formatter.string(from: goal)
        //剩餘時間
       let interval = goal.timeIntervalSince(now)
        //剩餘時間轉型
        let integrinterval = Int(interval/60/60/24+1)
        remainDay.text = "\(integrinterval)"
        
    
        
        if goalDate.text == "2018 08 17"{
            quite.isHidden = true
            goodMood.isHidden = false
        }else{
            quite.isHidden = false
            goodMood.isHidden = true
        }
        
    }
    
    
    
//    override func viewDidDisappear(_ animated: Bool) {
//        if timer != nil {
//            timer?.invalidate()
//        }
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


}

