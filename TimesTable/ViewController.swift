//
//  ViewController.swift
//  TimesTable
//
//  Created by Shashikant Jagtap on 07/12/2016.
//  Copyright © 2016 Shashikant Jagtap. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    @IBAction func sliderChanged(_ sender: Any) {
        
        table.reloadData()
    }
    @IBOutlet weak var slider: UISlider!
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return 20
        
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = String((Int(slider.value * 20)) * (indexPath.row + 1))
        
        return cell
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

