//
//  ViewController.swift
//  MyHood
//
//  Created by Ryan Collins on 4/7/16.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let post1 = Post(imagePath: "", title: "Post 1", postDescripiton: "This is post 1's descripiton")
        let post2 = Post(imagePath: "", title: "Post 2", postDescripiton: "This is post 2's descripiton")
        let post3 = Post(imagePath: "", title: "Post 3", postDescripiton: "This is post 3's descripiton")
        
        posts.append(post1)
        posts.append(post2)
        posts.append(post3)
        
        tableView.reloadData()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("postCell") as? PostCell {
            cell.configureCell(posts[indexPath.row])
            return cell
        } else {
            let cell = PostCell()
            cell.configureCell(posts[indexPath.row])
            return cell
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 86.0
    }

}

