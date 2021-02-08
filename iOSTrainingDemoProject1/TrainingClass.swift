//
//  TrainingClass.swift
//  iOSTrainingDemoProject1
//
//  Created by Nicholas Gilbert on 2/3/21.
//  Copyright © 2021 Nicholas Gilbert. All rights reserved.
//

import Foundation

class TrainingClass {
    
    var className : String = ""
    var classComputer : String?
    private var classSize : Int = 0
    
    private var FEs = [FieldEmployee]() {
        didSet {
            classSize = FEs.count
        }
    }
    
    func addEmployeeToGroup(employee: FieldEmployee) {
        print("adding an employee")
        FEs.append(employee)
    }
    
    private func performRemoval(name: String){
        if let index = FEs.firstIndex(where: { one in
            one.name == name}){
            FEs.remove(at: index)
        }
    }
    
    func howManyInGroup() -> Int {
        return classSize
    }
 
}
