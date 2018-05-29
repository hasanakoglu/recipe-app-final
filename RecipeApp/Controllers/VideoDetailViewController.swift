//
//  VideoDetailViewController.swift
//  RecipeApp
//
//  Created by Hasan on 19/02/2018.
//  Copyright © 2018 hasanakoglu. All rights reserved.
//

import UIKit

class VideoDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIWebViewDelegate {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var loadSpinner: UIActivityIndicatorView!
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var webViewHeightConstraint: NSLayoutConstraint!
    
    var selectedVideo: Video?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        let attr = NSDictionary(object: UIFont(name: "TheanoDidot-Regular", size: 16.0)!, forKey: NSAttributedStringKey.font as NSCopying)
        UISegmentedControl.appearance().setTitleTextAttributes(attr as [NSObject : AnyObject] , for: .normal)


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
            let height = (width/320) * 220


            self.imageView.center = self.view.center;
            self.imageView.image = vid.videoImage

            
            if vid.videoId == "QVkGFz0UFso" {
                self.imageView.image = nil
            }
            
            titleLabel.numberOfLines = 1
            descriptionLabel.numberOfLines = 1
            
            
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
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {

        let cell = tableView.dequeueReusableCell(withIdentifier: "InstructionCell", for: indexPath)
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            let ingredientText = selectedVideo?.ingredients[indexPath.row]
            cell.textLabel?.text = ingredientText
            cell.textLabel?.font = UIFont(name: "TheanoDidot-Regular", size: 16.0)
            cell.textLabel?.numberOfLines = 0
        case 1:
            let directionText = selectedVideo?.directions[indexPath.row]
            cell.textLabel?.text = directionText
            cell.textLabel?.font = UIFont(name: "TheanoDidot-Regular", size: 16.0)
            cell.textLabel?.numberOfLines = 0
        default:
            break
        }
        
        return cell
    
    }
    
//    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
//    {
//
//        let cell = tableView.cellForRow(at: indexPath)
//
//        let directionText = selectedVideo!.directions[indexPath.row]
//
//        switch segmentedControl.selectedSegmentIndex {
//        case 0:
//            let ingredientText: NSMutableAttributedString =  NSMutableAttributedString(string: selectedVideo!.ingredients[indexPath.row])
//            ingredientText.addAttribute(NSAttributedStringKey.strikethroughStyle, value: 1, range: NSMakeRange(0, ingredientText.length))
//            cell?.textLabel?.attributedText = ingredientText
//        case 1:
//            let attributedString = NSMutableAttributedString(string: directionText)
//            attributedString.addAttribute(NSAttributedStringKey.strikethroughStyle, value: 1, range: NSMakeRange(0, attributedString.length))
//            cell?.textLabel?.attributedText = attributedString
//        default:
//            break
//        }
//    }
}
