//
//  chocoTabViewController.swift
//  Hackwich11_3.24.26
//
//  Created by Marion Ano on 3/24/26.
//

import UIKit

class chocoTabViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var categoryOneImagesData = [String]()
    
    var candyArray = ["Reeseʻs Cups", "Snickers Candy Bar", "Kit Kat Chocolate Wafer", "Twix"]
    
    override func viewDidLoad()
        {
            super.viewDidLoad()
            //Part 8
            let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
            let dict = NSDictionary(contentsOfFile: path!)
            categoryOneImagesData = dict!.object(forKey:"CategoryOneImages") as! [String]
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return candyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = candyArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "chocoSegue"
        {
            let s1 = segue.destination as! chocoDetailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = categoryOneImagesData[imageIndex!]
        }
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
