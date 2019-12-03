//
//  AddController.swift
//  Listing
//
//  Created by Ariff Rozi on 2019/11/05.
//  Copyright © 2019 ryukyu team. All rights reserved.
//

import UIKit
var ItemList = [String]()
var PriceList = [String]()
var CommentList = [String]()
var PicList = [String]()

class AddController: UIViewController {
    @IBOutlet weak var ItemTextField: UITextField!
    @IBOutlet weak var PriceTextField: UITextField!
    @IBOutlet weak var CommentTextField: UITextField!
    @IBOutlet weak var PicStatusLabel: UILabel!
    @IBOutlet weak var PicStatus: UISegmentedControl!
    @IBAction func PicStatusChanged(_ sender: Any) {
        switch PicStatus.selectedSegmentIndex
        {
        case 0:
            PicStatusLabel.text = "あり"
        case 1:
            PicStatusLabel.text = "なし"
        default:
            break
        }
    }
    @IBAction func AddToListButton(_ sender: Any) {
        
        PicList.append(PicStatusLabel.text!)
        UserDefaults.standard.set(PicList, forKey: "PicList")
        
        ItemList.append(ItemTextField.text!)
        ItemTextField.text = ""
        UserDefaults.standard.set(ItemList, forKey: "ItemList")
        
        PriceList.append(PriceTextField.text!)
        PriceTextField.text = ""
        UserDefaults.standard.set(PriceList, forKey: "PriceList")
        
        CommentList.append(CommentTextField.text!)
        CommentTextField.text = ""
        UserDefaults.standard.set(CommentList, forKey: "CommentList")
        UserDefaults.standard.set(PicList, forKey: "PicList")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
