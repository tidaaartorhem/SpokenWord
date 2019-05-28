//
//  ViewController.swift
//  SpokenWord
//
//  Created by CARFAX Ca on 2019-03-22.
//  Copyright © 2019 CARFAX Ca. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var videos:[Video] = [Video]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let model = VideoModel()
        self.videos = VideoModel().getVideos()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
return videos.count    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell")!
        
        let videoTitle = videos[indexPath.row].videoTitle
        //Cutomize Title
        cell.textLabel?.text = videoTitle
        
        //Construct thumbnail
        let videoUrlString = "http://www.i1.ytimg.com/vi/" + videos[indexPath.row].videoId + "/mqdefault.jpg"
        
        //Create NSURL object
        let videoThumbnailUrlString = NSURL(string: videoUrlString)
        //Create an NSURLRequest Object
        if videoUrlString != nil {
        let request = NSURLRequest(URL : videoThumbnailUrlString!)
        // Create an NSuRL Session
        let session = NSURLSession.sharedSession()
        //Create a data task and pass in Request
        let dataTask = session.dataTaskWithRequest(request, completionHandler:{(NSData? , NSURLResponse?, NSError?) -> Void in
            
            //Get areference to imageview element of the cell
            let imageView = cell.viewWithTag(1) as! UIImageView
            imageView.image = UIImage(data: data!)
            
            
        } )
        }
        return cell
    }
}

