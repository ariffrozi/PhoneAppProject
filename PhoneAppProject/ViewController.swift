//
//  ViewController.swift
//  PhoneAppProject
//
//  Created by Ariff Rozi on 2019/11/05.
//  Copyright © 2019 ryukyu team. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var ItemTableView: UITableView!
    @IBOutlet weak var PriceTableView: UITableView!
    @IBOutlet weak var CommentTableView: UITableView!
    @IBOutlet weak var PicStatusTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var sect:Int?
        if tableView == ItemTableView {
            sect = ItemList.count;
        }
        if tableView == PicStatusTableView {
            sect = PicList.count;
        }
        if tableView == PriceTableView {
            sect = PriceList.count;
        }
        if tableView == CommentTableView {
            sect = CommentList.count;
        }
        return sect!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var returnCell:UITableViewCell?
        if tableView == ItemTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for : indexPath as IndexPath)
            cell.textLabel!.text = ItemList[indexPath.row]
            returnCell = cell
        }
        if tableView == PicStatusTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PicStatusCell", for: indexPath as IndexPath)
            cell.textLabel!.text = PicList[indexPath.row]
            returnCell = cell
        }
        if tableView == PriceTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PriceCell", for: indexPath as IndexPath)
            cell.textLabel!.text = PriceList[indexPath.row]
            returnCell = cell
        }
        if tableView == CommentTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CommentCell", for: indexPath as IndexPath)
            cell.textLabel!.text = CommentList[indexPath.row]
            returnCell = cell
        }
        return returnCell!
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.object(forKey: "ItemList") != nil {
            ItemList = UserDefaults.standard.object(forKey: "ItemList") as! [String]
        }
        if UserDefaults.standard.object(forKey: "PicList") != nil {
            PicList = UserDefaults.standard.object(forKey: "PicList") as! [String]
        }
        if UserDefaults.standard.object(forKey: "PriceList") != nil {
            PriceList = UserDefaults.standard.object(forKey: "PriceList") as! [String]
        }
        if UserDefaults.standard.object(forKey: "CommentList") != nil {
            CommentList = UserDefaults.standard.object(forKey: "CommentList") as! [String]
        }
    }
}
