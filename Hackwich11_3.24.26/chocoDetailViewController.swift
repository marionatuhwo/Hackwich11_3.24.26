//
//  chocoDetailViewController.swift
//  Hackwich11_3.24.26
//
//  Created by Marion Ano on 3/24/26.
//

import UIKit

class chocoDetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var imagePass: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageName = imagePass{
            imageView.image = UIImage(named: imageName)
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
