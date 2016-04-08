//
//  DataService.swift
//  MyHood
//
//  Created by Ryan Collins on 4/8/16.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import Foundation
import UIKit

class DataService {
    
    static let instance = DataService()
    
    let POSTS_KEY = "posts"
    
    private var _loadedPosts = [Post]()
    
    var loadedPosts: [Post] {
        return _loadedPosts
    }
    
    func addPost(post: Post) {
        _loadedPosts.append(post)
        savePosts()
        loadPosts()
    }
    
    func savePosts() {
        let postData = NSKeyedArchiver.archivedDataWithRootObject(_loadedPosts)
        NSUserDefaults.standardUserDefaults().setObject(postData, forKey: POSTS_KEY)
        
    }
    
    func loadPosts() {
        if let postsData = NSUserDefaults.standardUserDefaults().objectForKey(POSTS_KEY) as? NSData {
            if let postsArray = NSKeyedUnarchiver.unarchiveObjectWithData(postsData) as? [Post] {
                self._loadedPosts = postsArray
            }
        }
        
    }
    
    func saveImageandCreatePath(image: UIImage) {
        
    }
    
    func imageForPath(path: String) -> String {
        return ""
    }
    
}