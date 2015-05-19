//
//  BaseControllerInterface.swift
//  tratata
//
//  Created by Andrii Tishchenko on 19.05.15.
//  Copyright (c) 2015 Andrii Tishchenko. All rights reserved.
//
import Foundation
import UIKit

protocol BaseControllerInterface: NSObjectProtocol {
    var datasource: NSMutableArray{ get set }
    func test()
}


class BaseTableViewController: UITableViewController, BaseControllerInterface{
    var datasource: NSMutableArray = []
    
    func test(){
        println("test")
    }
}

class BaseViewController: UIViewController, BaseControllerInterface{
    var datasource: NSMutableArray = []
    @IBOutlet var tableView: UITableView!
    
    func test(){
        println("test")
    }
}