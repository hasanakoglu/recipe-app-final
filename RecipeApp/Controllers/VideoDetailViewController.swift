//
//  VideoDetailViewController.swift
//  RecipeApp
//
//  Created by DevPair3 on 19/02/2018.
//  Copyright © 2018 ford. All rights reserved.
//

import UIKit

class VideoDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIWebViewDelegate {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var loadSpinner: UIActivityIndicatorView!
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var webViewHeightConstraint: NSLayoutConstraint!
    
    var selectedVideo: Video?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self


        // Do any additional setup after loading the view.
    }
    
    @IBAction func segmentChanged(_ sender: Any) {
        tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        webView.delegate = self
        //set the labels on detail view to the variables set in video class, also embed video
        if let vid = self.selectedVideo {
            self.titleLabel.text = vid.videoTitle
            self.descriptionLabel.text = vid.videoDescription
            
            let width = self.view.frame.size.width
            let height = (width/320) * 180
            
            //adjust the height of webview
            self.webViewHeightConstraint.constant = height
            
            let videoEmbedString = "<html><head><style type=\"text/css\">body {background-color: transparent;color: white;}</style></head><body style=\"margin:0\"><iframe frameBorder=\"0\" height=\"" + String(describing: height) + "\" width=\"" + String(describing: width) + "\" src=\"http://www.youtube.com/embed/" + vid.videoId + "?showinfo=0&modestbranding=1&frameborder=0&rel=0\"></iframe></body></html>"
 
            self.webView.loadHTMLString(videoEmbedString, baseURL: nil)
        }
    }
 
    func webViewDidStartLoad(_ : UIWebView) {
        loadSpinner.startAnimating()
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        loadSpinner.stopAnimating()
        loadSpinner.isHidden = true
    }
    
    
    
    //MARK: - Tableview Delegate & Datasource
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            return (selectedVideo?.ingredients.count)!
        case 1:
            return (selectedVideo?.directions.count)!
        default:
            break
        }
        
        return 0
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
                
        let ingredientText = selectedVideo!.ingredients[indexPath.row]
        let directionText = selectedVideo!.directions[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "InstructionCell", for: indexPath)
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            cell.textLabel?.text = ingredientText
        case 1:
            cell.textLabel?.text = directionText
        default:
            break
        }
        
        return cell
    
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        
    }



}
