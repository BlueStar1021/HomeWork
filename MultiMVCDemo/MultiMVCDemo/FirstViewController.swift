//
//  ViewController.swift
//  MultiMVCDemo
//
//  Created by student on 2018/12/17.
//  Copyright © 2018年 BlueStar. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var stu = Student()
    
    @IBOutlet weak var input_no: UITextField!
    @IBOutlet weak var input_name: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        input_no.text = stu.no
        input_name.text = stu.name
    }

    @IBAction func showSecondVC(_ sender: Any) {
        stu.no = input_no.text!
        stu.name = input_name.text!
        
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        
        secondVC.stu = stu
        
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
    @IBAction func showThirdVC(_ sender: Any) {
        let thirdVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "thirdVC")
        present(thirdVC, animated: true, completion: nil)
    }
    
    
}

