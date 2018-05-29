//
//  ViewController.swift
//  RecipeApp
//
//  Created by Hasan on 19/02/2018.
//  Copyright © 2018 hasanakoglu. All rights reserved.
//

import UIKit

//added the protocols here for tableview
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var videos:[Video] = [Video]() //gets the list of videos from the VideoModel to display on the tableview
    var selectedVideo: Video? //nil or not nil when selected
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        title = "Earth Rose"
//        let attributes = [NSAttributedStringKey.font: UIFont(name: "Avenue du Vapoteur.ttf", size: 17)]
//        UINavigationBar.appearance().titleTextAttributes = attributes
        let model = VideoModel()
        self.videos = model.getVideos() //gets method from videomodel, we assign it to self.videos so later when the tableview asks for it to be displayed it can just access it here
        
        self.tableView.dataSource = self
        self.tableView.delegate = self // assigned both datasource and delegate to viewcontroller to know how many rows etc
        
    }
    
    func configureView() {
        
        // Change the font and size of nav bar text
        if let navBarFont = UIFont(name: "Sophia", size: 36.0) {
            let navBarAttributesDictionary: [NSObject: AnyObject]? = [
                NSAttributedStringKey.foregroundColor as NSObject: UIColor.white,
                NSAttributedStringKey.font as NSObject: navBarFont
            ]
            navigationController?.navigationBar.titleTextAttributes = navBarAttributesDictionary as! [NSAttributedStringKey : Any]
        }
    }

    //for setting the height and width of the cells
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        //calculate width of screen to calculate height of row
        return (self.view.frame.size.width / 320) * 180
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return videos.count //contains the videos we have in the view model
    }
    
    //this is every single cell thats to be displayed
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell")!
        
        let videoTitle = videos[indexPath.row].videoTitle //pass in indexpath.row to give the video object and then assign the string videotitle
        let cookingTime = videos[indexPath.row].cookingTime
        let videoImage = videos[indexPath.row].videoImage
        
        //get the label for the cell
        let label = cell.viewWithTag(2) as! UILabel
        label.text = videoTitle
        label.numberOfLines = 1
        label.allowsDefaultTighteningForTruncation = true
        
        let label2 = cell.viewWithTag(3) as! UILabel
        label2.text = cookingTime
        
        let imageView2 = cell.viewWithTag(4) as! UIImageView
        imageView2.image = videoImage

        
        
//        //customize the cell to display video title
//        cell.textLabel?.text = videoTitle // added the videoTitle via indexpath.row above
        
        
        //THIS SECTION BELOW IS TO GET THE VIDEO THUMBNAILS INTO THE TABLEVIEW, THESE ARE MUST HAVES FOR IT TO WORK
        
        
        // construct video thumbnail
        let videoThumbnailUrlString = "https://img.youtube.com/vi/" + videos[indexPath.row].videoId + "/maxresdefault.jpg";
        
        // Create an NSURLobject
        let videoThumbailUrl = URL(string: videoThumbnailUrlString)
        
        if videoThumbailUrl != nil {
            
            // Create an NSURLRequest object
            let request = URLRequest(url: videoThumbailUrl!)
            
            //Create an NSURLSesson
            let session = URLSession.shared
            
            // Create a datatask and pass in the request
            let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data:Data?, response:URLResponse?, error:Error?) in
                
                DispatchQueue.main.async {
                    // Get a reference to the imageview element of the cell
                    let imageView = cell.viewWithTag(1) as! UIImageView
                    
                    // Create an image object from the data and asign it into the imageview
                    imageView.image = UIImage(data: data!)
                }
                
            })
            dataTask.resume()
     
    }
   return cell
  }
    
    //we do the didselect method of tableview to move data from selected cell to the detail view

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //take note of which cell/video user selected
        self.selectedVideo = self.videos[indexPath.row]
        
        //call the segue
        self.performSegue(withIdentifier: "goToDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //get a reference to destination view controller
        let detailViewController = segue.destination as! VideoDetailViewController
        
        //set the selected video property of the destination view controller
        detailViewController.selectedVideo = self.selectedVideo
    }
}







