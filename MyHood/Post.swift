//
//  Post.swift
//  MyHood
//
//  Created by Ryan Collins on 4/7/16.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import Foundation

class Post {
    
    private var imagePath: String
    private var title: String
    private var postDesc: String
    
    init(imagePath: String, title: String, postDescripiton: String) {
        self.imagePath = imagePath
        self.title = title
        self.postDesc = postDescripiton
    }
    
}