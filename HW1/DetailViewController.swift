//
//  DetailViewController.swift
//  HW1
//
//  Created by stephanie saenz on 9/3/23.
//

import UIKit

class DetailViewController: UIViewController {

    var story: Story?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let story = story {
            // Configure the dinosaur image and dynamic labels
            storyImageView.image = story.image
            textLabel.text = story.textlabel
            titleLabel.text = story.titlelabel
        }
    }
    
    @IBOutlet weak var storyImageView: UIImageView!
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
