//
//  AddingViewController.swift
//  MealDemo
//
//  Created by student on 2018/12/17.
//  Copyright © 2018年 BlueStar. All rights reserved.
//

import UIKit

class AddingViewController: UIViewController {
    
    @IBOutlet weak var input: UITextField!
    
    var food = Food(name: "")

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
    @IBAction func back(_ sender: Any) {
        let foodName = input.text
        food.name = foodName!
        navigationController?.popViewController(animated: true)
    }
    
}
