//
//  AddPostVC.swift
//  MyHood
//
//  Created by Ryan Collins on 4/8/16.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imagePreview: UIImageView!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descField: UITextField!
    
    var imagePicker: UIImagePickerController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePreview.layer.cornerRadius = imagePreview.frame.size.width / 2
        imagePreview.clipsToBounds = true
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }

    @IBAction func changeImage(sender: UIButton) {
        sender.setImage(nil, forState: UIControlState.Normal)
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        imagePreview.image = image
    }
    
    @IBAction func createPost(sender: UIButton) {
        if let title = titleField.text, let desc = descField.text, let img = imagePreview.image {
            
            let imagePath = DataService.instance.saveImageandCreatePath(img)
            
            let post = Post(imagePath: imagePath, title: title, postDescripiton: desc)
            DataService.instance.addPost(post)
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func cancel(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
