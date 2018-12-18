//
//  ViewController.swift
//  MealDemo
//
//  Created by student on 2018/12/17.
//  Copyright © 2018年 BlueStar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    
    var newFood = Food(name: "")
    
    var foodArray = [Food]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var food_1 = Food(name: "rice")
        var food_2 = Food(name: "noodles")
        
        foodArray.append(food_1)
        foodArray.append(food_2)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell") as! MealTableViewCell
        
        let food = foodArray[indexPath.row]
        cell.mealName.text = food.name
        return cell
    }

    
    @IBAction func showAddingVC(_ sender: Any) {
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AddingVC") as! AddingViewController
        
        
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

