//
//  ViewController.swift
//  HW1
//
//  Created by stephanie saenz on 9/3/23.
// Final Draft

import UIKit

class ViewController: UIViewController {
 
    let background = Story(image: UIImage(named: "PBC")!, titlelabel: "Background", textlabel: "My name is Stephanie Saenz and I graduated from Palm Beach Central High School. Go Broncos! Throughtout the four years that I attended at PBC, I was in the engineering program called PLTW, or Project Lead The Way. Each year we would learn the basics of a different type of engineering. For example, our junior year it was electrical so we learned about soldering!")
                           
    let facts = Story(image: UIImage(named : "Colombia")!, titlelabel: "Facts", textlabel: "Some facts about me is that I have dual citizenship, from the United States and Colombia. Every year my family and I try to go to Colombia. Another fact is that I know how to speak both english and spanish, currently I am learning french! Another interesting fact is that I know how to solve the Rubiks Cube.")
    
    let hobbies = Story(image: UIImage(named : "Piano")!, titlelabel: "Hobbies", textlabel:"I love learning new things. Some hobbies that I have is playing the piano. I also love doing sports, especially soccer and swimming. Every week I always try to go to a pickup game and play soccer for hours on end.")
    

    //Arrays
    var stories: [Story] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        stories = [background, facts, hobbies]
        
    }

    @IBAction func didTapButton(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.story = stories[0]
            } else if tappedView.tag == 1 {
                detailViewController.story = stories[1]
            } else if tappedView.tag == 2 {
                detailViewController.story = stories[2]
            } else {
                print("no Section was tapped, please check your selection.")
            }
        }
    }
}

