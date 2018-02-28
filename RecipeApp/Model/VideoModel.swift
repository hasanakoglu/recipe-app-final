//
//  VideoModel.swift
//  RecipeApp
//
//  Created by DevPair3 on 19/02/2018.
//  Copyright © 2018 ford. All rights reserved.
//

import UIKit

class VideoModel: NSObject {
    
    //returns this class type
    func getVideos() -> [Video]{
        
        var videos = [Video]() //empty video array object creating a new instance of the class video. so everytime you use videos, you are using the Video array
    
        // create a video object
        let video1 = Video()
    
        
        //assign properties
        video1.videoId = "SW-BU6keEUw"
        video1.videoTitle = "How to Make Spaghetti"
        video1.cookingTime = "⏱ Cooking Time: 40 Minutes"
        video1.videoDescription = "⏱ Cooking Time: 40 Minutes"
        video1.ingredients = ["1sdfddsfdsa","2dasdsadsdas","3dasdasdasda"]
        video1.directions = ["1","2","3"]
        //append it into the videos array
        videos.append(video1)
        
        // create a video object
        let video2 = Video()
        
        //assign properties
        video2.videoId = "-gF8d-fitkU"
        video2.videoTitle = "How to Make Spaghetti"
        video2.videoDescription = "Cooking Time: blah Prep: blah"
        
        //append it into the videos array
        videos.append(video2)
        
        // create a video object
        let video3 = Video()
        
        //assign properties
        video3.videoId = "-gF8d-fitkU"
        video3.videoTitle = "How to Make Spaghetti"
        video3.videoDescription = "Cooking Time: blah Prep: blah"
        
        //append it into the videos array
        videos.append(video3)
        
        // create a video object
        let video4 = Video()
        
        //assign properties
        video4.videoId = "-gF8d-fitkU"
        video4.videoTitle = "How to Make Spaghetti"
        video4.videoDescription = "Cooking Time: blah Prep: blah"
        
        //append it into the videos array
        videos.append(video4)
        
        // create a video object
        let video5 = Video()
        
        //assign properties
        video5.videoId = "-gF8d-fitkU"
        video5.videoTitle = "How to Make Spaghetti"
        video5.videoDescription = "Cooking Time: blah Prep: blah"
        
        //append it into the videos array
        videos.append(video5)
        
        // return the array to the caller
        return videos
    }

}
