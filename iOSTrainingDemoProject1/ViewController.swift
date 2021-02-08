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
    
    @IBOutlet weak var FirstButton: UIButton!
    
    var AName : String = ""
    
    let names = ["David", "Dom", "Nicholas", "Richard", "Walter", "Weiguo"]
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(names[indexPath.row])
        //tableView.deselectRow(at: indexPath, animated: true)
        let partName = names[indexPath.row]
        AName = names[indexPath.row]

        let vc = SecondViewController(names: partName)
        
    }
    
    
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
    
    
    
    @IBAction func SelectionButton(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "toSecondScreenSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondScreenSegue", let destination = segue.destination as? SecondViewController {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.TheName = AName
    
        }
    }
    

}

