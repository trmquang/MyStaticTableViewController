//
//  ViewController.swift
//  StaticTableViewController
//
//  Created by Quang Minh Trinh on 10/9/16.
//  Copyright © 2016 Quang Minh Trinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerViewHeightConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let staticTableViewController = segue.destination as? MyStaticTableViewController {
            staticTableViewController.delegate = self
        }
    }

}
extension ViewController: MyStaticTableViewControllerDelegate {
    func updateContentHeight(height: CGFloat) {
        containerViewHeightConstraint.constant = height - 1
    }
}
