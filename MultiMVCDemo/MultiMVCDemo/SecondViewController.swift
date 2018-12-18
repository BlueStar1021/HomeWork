//
//  SecondViewController.swift
//  MultiMVCDemo
//
//  Created by student on 2018/12/17.
//  Copyright © 2018年 BlueStar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var stu : Student!
    
    @IBOutlet weak var input_no: UITextField!
    @IBOutlet weak var input_name: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        input_no.text = stu.no
        input_name.text = stu.name
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        stu.no = input_no.text!
        stu.name = input_name.text!
        
        navigationController?.popViewController(animated: true)
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
