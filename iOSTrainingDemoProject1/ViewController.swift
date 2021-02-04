//
//  ViewController.swift
//  iOSTrainingDemoProject1
//
//  Created by Nicholas Gilbert on 2/2/21.
//  Copyright © 2021 Nicholas Gilbert. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var namesTV: UITableView!
    
    
    let names = ["David", "Dom", "Nicholas", "Richard", "Walter", "Weiguo"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    

    

}

