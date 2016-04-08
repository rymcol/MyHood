//
//  AddPostVC.swift
//  MyHood
//
//  Created by Ryan Collins on 4/8/16.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {
    
    @IBOutlet weak var imagePreview: UIImageView!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePreview.layer.cornerRadius = imagePreview.frame.size.width / 2
        imagePreview.clipsToBounds = true
    }

    @IBAction func changeImage(sender: UIButton) {
        sender.setImage(nil, forState: UIControlState.Normal)
        
    }
    
    @IBAction func createPost(sender: UIButton) {
        
    }
    
    @IBAction func cancel(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
