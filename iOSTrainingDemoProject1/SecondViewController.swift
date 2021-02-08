//
//  SecondViewController.swift
//  iOSTrainingDemoProject1
//
//  Created by Nicholas Gilbert on 2/3/21.
//  Copyright © 2021 Nicholas Gilbert. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

   
    //@IBOutlet weak var topTitleLabel: UILabel!
    @IBOutlet weak var topTitleLabel: UILabel!
    @IBOutlet weak var confirmButton : UIButton!
    
    var selectedEmployee : FieldEmployee?
    
    var thatClass: ViewController?
    
    
    public var names: String = ""
    public var TheName: String?
    
    init(names: String){
        self.names = names
        TheName = self.names
        //print(TheName + " Here it is")
        super.init(nibName: nil, bundle: nil)
        //print(topTitleLabel.text)
        //self.topTitleLabel.text
    }
    
    required init?(coder aDecoder: NSCoder) {
        //TheName = ""
        //TheName = self.names
        //print(TheName + "Here it is again")
        super.init(coder: aDecoder)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topTitleLabel.text = TheName
        //self.topTitleLabel.text = self.names
        // Do any additional setup after loading the view.
    }
    
    @IBAction func confirmButtonPressed(_ sender: UIButton){
        
    }

}
