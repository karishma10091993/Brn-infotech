//
//  ViewController.swift
//  taskkkkk
//
//  Created by brn.developers on 8/2/18.
//  Copyright © 2018 brn.developers. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
  var save:Array=[String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func onGetBtnTap(_ sender: UIButton) {
        
        let url=URL(string: "https://rss.itunes.apple.com/api/v1/in/ios-apps/top-free/all/10/explicit.json")

        let urlreq=URLRequest(url: url!)
        
        //let sessionTask=URLSession.shared.dataTask(with:urlreq { (data, response, error) in
        let sessionTask=URLSession.shared.dataTask(with: urlreq, completionHandler: { (data, response, error) in
        DispatchQueue.main.async {
            do{
                let serverResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as! [String:Any]
            
            //print(serverResponse)
                var save=serverResponse["feed"] as! [String:Any]
               // print("data isssss \(save)")
                var title=save["title"] as! String
                //print(title)
                var author=save["author"] as! [String:Any]
                //print(author)
                
                
                
                var results=save["results"] as! [[String:Any]]
               // print(results)
                for i in 0..<results.count{
                    var new=results[i]
                    var artist=new["artistName"] as! String
                    
                   self.save.append(artist)
                   
                }
                 print(self.save)
               self.tableView.reloadData()
            }
            
            catch{
                print(error)
            }
            }
    })
   
     sessionTask.resume()
        
    
}
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.save.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text=self.save[indexPath.row]
        return cell!
    }
}
