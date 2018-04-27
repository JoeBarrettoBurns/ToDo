//
//  CompleteTaskViewController.swift
//  ToDo
//
//  Created by Joe B-B on 2018-04-26.
//  Copyright © 2018 Joe B-B. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    
    @IBOutlet weak var taskLabel: UILabel!
    var task = Task()
    var previousVC = TasksViewController()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        if task.important {
            taskLabel.text = " ❗️ \(task.name)"
            
        } else{
            taskLabel.text = task.name
        }
        
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        
        // refreshes the table view -  showing the new task
        // move back (popping) to previous view controller
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

}
