//
//  ViewController.swift
//  countryApiDemo
//
//  Created by Akash Padhiyar on 30/03/19.
//  Copyright © 2019 MyMac. All rights reserved.
//

import UIKit
struct JsonStruct: Decodable {
    let name:String
    let capital:String
    let alpha3Code:String
    let alpha2Code:String
    let region:String
    let subregion:String

}

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {
    
    var arrdata = [JsonStruct]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrdata.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MyTableView.dequeueReusableCell(withIdentifier: "MyCell") as! MyTableViewCell
        
        cell.MyLabel1.text = "name : \(arrdata[indexPath.row].name)"
        cell.MyLabel2.text = "Capital : \(arrdata[indexPath.row].capital)"
        
        
        return cell
       
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail:DetailsCountry = self.storyboard?.instantiateViewController(withIdentifier: "DetailsVC") as! DetailsCountry
        detail.strregion = "Region:\(arrdata[indexPath.row].region)"
        detail.strsubregion = arrdata[indexPath.row].subregion
        detail.stralpha2 = arrdata[indexPath.row].alpha2Code
        detail.straplpha3 = arrdata[indexPath.row].alpha3Code
        
        
        self.navigationController?.pushViewController(detail, animated: true)
    }
    
    
  
    @IBOutlet weak var MyTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getdata()
        MyTableView.delegate = self
        MyTableView.dataSource = self
       
      // Do any additional setup after loading the view, typically from a nib.
    }
   
    func getdata()
    {
        let url = URL(string: "https://restcountries.eu/rest/v2/all")
        
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            do{
                if error.self == nil{
                    self.arrdata = try JSONDecoder().decode([JsonStruct].self, from: data!)
                    
                }
                for mainarr in self.arrdata{
                    
                  //print(mainarr.name,":",mainarr.capital
                   // )
                    
                    DispatchQueue.main.async
                    {
                         self.MyTableView.reloadData()
                    }
                }
            }
            catch{
                print("error in get json data")
            }
            
            
            }.resume()
    }
}

