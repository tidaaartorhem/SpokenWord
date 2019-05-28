//
//  VideoModel.swift
//  SpokenWord
//
//  Created by CARFAX Ca on 2019-03-22.
//  Copyright © 2019 CARFAX Ca. All rights reserved.
//

import UIKit

class VideoModel: NSObject {
    
    func getVideos() -> [Video] {
        
        var videos = [Video]()
        // Create a video object
        let video1 = Video()
        
        //Assign properties
        video1.videoId = "cPG6nJRJeWQ"
        video1.videoTitle = "Sarah Kay & Phil Kaye - When Love Arrives"
        video1.videoDescription = "Button Poetry is committed to developing a coherent and effective system of production, distribution, promotion and fundraising for spoken word and performance poetry."
        
        //Append it into videos array
        videos.append(video1)
        //Return the array to the caller
        return videos
    }
}
