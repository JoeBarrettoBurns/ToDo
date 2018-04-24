//
//  CreateTaskViewController.swift
//  ToDo
//
//  Created by Joe B-B on 2018-04-23.
//  Copyright © 2018 Joe B-B. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantButton: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
   var previousVC = TasksViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        // Create a Task from the outlet information
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantButton.isOn
        
        
        // add new task to array in previous viewController
        
        previousVC.tasks.append(task)
        // refreshes the table view -  showing the new task
        previousVC.tableView.reloadData()
        // move back (popping) to previous view controller
        navigationController!.popViewController(animated: true)
        

    }
    
}
