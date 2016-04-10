//
//  PostCell.swift
//  MyHood
//
//  Created by Ryan Collins on 4/7/16.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        postImage.layer.cornerRadius = postImage.frame.size.width / 2
        postImage.clipsToBounds = true
    }
    
    func configureCell(post: Post) {
        titleLabel.text = post.title
        descLabel.text = post.postDesc
        postImage.image = DataService.instance.imageForPath(post.imagePath)
    }

}
