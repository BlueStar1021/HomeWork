//
//  ViewController.swift
//  AlertDemo
//
//  Created by student on 2018/11/26.
//  Copyright © 2018年 2016110455. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet weak var chooseLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var stuTableView: UITableView!
    
    var stuArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        stuArray.append("stu1")
        stuArray.append("stu2")
        stuArray.append("stu3")
        stuArray.append("stu4")
        
    }
    
    @IBAction func addClicked(_ sender: Any) {
        if let name = nameTextField.text {
            stuArray.append(name)
            stuTableView.reloadData()
        }
        nameTextField.resignFirstResponder()
    }
    
    @IBAction func editClicked(_ sender: Any) {
        if let row = stuTableView.indexPathForSelectedRow?.row {
            if let name = nameTextField.text {
                stuArray[row] = name
                stuTableView.reloadData()
            }
        }
    }
    
    @IBAction func deleteClicked(_ sender: Any) {
        stuTableView.isEditing = !stuTableView.isEditing
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stuArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell") as! StudentTableViewCell
        
        let stu = stuArray[indexPath.row]
        cell.name.text = stu
        cell.name.sizeToFit()
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 108
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chooseLabel.text = "You choose: \(stuArray[indexPath.row])"
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            stuArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let source = stuArray.remove(at: sourceIndexPath.row)
        stuArray.insert(source, at: destinationIndexPath.row)
    }
    
}

