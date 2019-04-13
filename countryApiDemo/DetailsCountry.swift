//
//  DetailsCountry.swift
//  countryApiDemo
//
//  Created by Akash Padhiyar on 31/03/19.
//  Copyright © 2019 MyMac. All rights reserved.
//

import UIKit

class DetailsCountry: UIViewController {
    @IBOutlet weak var MyLabel11: UILabel!
    @IBOutlet weak var MyLabel22: UILabel!
    @IBOutlet weak var MyLabel33: UILabel!
    @IBOutlet weak var MyLabel44: UILabel!
    
    var strregion = ""
    var strsubregion = ""
    var stralpha2 = ""
    var straplpha3 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MyLabel11.text = strregion
        MyLabel22.text = strsubregion
        MyLabel33.text = stralpha2
        MyLabel44.text = straplpha3
        
        
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
