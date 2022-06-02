//
//  ViewController.swift
//  FoodDice
//
//  Created by Enze Jiang on 6/2/22.
//

import UIKit

class ViewController:
        UIViewController,
        UIPickerViewDelegate,
        UIPickerViewDataSource {
    
    let Price = ["$", "$$", "$$$"]
    let FoodType = ["Chinese", "Japanese", "American", "Other"]
    
    @IBOutlet weak var PriceSelect: UIPickerView!
    @IBOutlet weak var FoodTypeSelect: UIPickerView!
    @IBOutlet weak var GenMenu: UIButton!
    @IBOutlet weak var ResName: UILabel!
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView.tag == 1) {
            return Price.count
        }
        else {
            return FoodType.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (pickerView.tag == 1) {
            return Price[row]
        }
        else {
            return FoodType[row]
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        PriceSelect.delegate = self
        PriceSelect.dataSource = self
        FoodTypeSelect.delegate = self
        FoodTypeSelect.dataSource = self
    }
    
    var checkprice: Int = 0
    var checktype: Int = 0
    
    var cnlow = ["Panda Express", "煮泡面", "煮饺子"]
    var cnmid = ["自己做", "那天", "四川", "巴国", "blaze", "蜀阁", "oishi", "十刀家常小炒", "麻辣E族", "天香楼"]
    var cnhigh = ["中华一番", "taste", "明轩"]
    
    var jplow = ["None"]
    var jpmid = ["Sushi Don", "Yatagarasu", "MAJE Sushi", "平成"]
    var jphigh = ["Katana", "Kitami", "牛角", "Omakase"]
    
    var uslow = ["McDonald's", "Subway", "Burger King", "Steak'n Shake"]
    var usmid = ["Wendy's", "KFC", "Five Guys", "Applebee", "Wings", "Popeyes", "PizzaHut", "Dominos", "Chick-fil-A"]
    var ushigh = ["Red Lobster", "Texas Roadhouse"]
    
    var otherlow = ["Greenleaf", "Lin Wok"]
    var othermid = ["Taco Bell", "Basil", "Chipolle", "Poke Hibachi"]
    var otherhigh = ["Kimchi", "Xin&Gaza"]
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (pickerView.tag == 1) {
            if (row == 0) {
                checkprice = 0
            }
            else if (row == 1) {
                checkprice = 1
            }
            else if (row == 2) {
                checkprice = 2
            }
        }
        
        if (pickerView.tag == 2) {
            if (row == 0) {
                checktype = 0
            }
            else if (row == 1) {
                checktype = 1
            }
            else if (row == 2) {
                checktype = 2
            }
            else if (row == 3) {
                checktype = 3
            }
        }
        
        if (checktype == 0) {
            if (checkprice == 0) {
                cnlow.shuffle()
                self.ResName.text = cnlow[0]
            }
            else if (checkprice == 1) {
                cnmid.shuffle()
                self.ResName.text = cnmid[0]
            }
            else if (checkprice == 2) {
                cnhigh .shuffle()
                self.ResName.text = cnhigh[0]
            }
        }
        
        if (checktype == 1) {
            if (checkprice == 0) {
                jplow.shuffle()
                self.ResName.text = jplow[0]
            }
            else if (checkprice == 1) {
                jpmid.shuffle()
                self.ResName.text = jpmid[0]
            }
            else if (checkprice == 2) {
                jphigh .shuffle()
                self.ResName.text = jphigh[0]
            }
        }
        
        if (checktype == 2) {
            if (checkprice == 0) {
                uslow.shuffle()
                self.ResName.text = uslow[0]
            }
            else if (checkprice == 1) {
                usmid.shuffle()
                self.ResName.text = usmid[0]
            }
            else if (checkprice == 2) {
                ushigh .shuffle()
                self.ResName.text = ushigh[0]
            }
        }
        
        if (checktype == 3) {
            if (checkprice == 0) {
                otherlow.shuffle()
                self.ResName.text = otherlow[0]
            }
            else if (checkprice == 1) {
                othermid.shuffle()
                self.ResName.text = othermid[0]
            }
            else if (checkprice == 2) {
                otherhigh.shuffle()
                self.ResName.text = otherhigh[0]
            }
        }
    }
}

