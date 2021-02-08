//
//  HomeViewController.swift
//  iOSTrainingDemoProject1
//
//  Created by Nicholas Gilbert on 2/4/21.
//  Copyright © 2021 Nicholas Gilbert. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let class02 = TrainingClass()
        class02.className = "Awesome Class"
        
        class02.addEmployeeToGroup(employee: FieldEmployee(name: "Rosy", email: "rosy@that.com"))
        class02.addEmployeeToGroup(employee: FieldEmployee(name: "Nathan Dominique", email: "nathan@that.com"))
        class02.addEmployeeToGroup(employee: FieldEmployee(name: "P.K", email: "pk@email.com"))
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
