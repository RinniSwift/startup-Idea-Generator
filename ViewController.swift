//
//  ViewController.swift
//  StartupIdeaGenerator
//
//  Created by Rinni Swift on 7/3/18.
//  Copyright © 2018 Rinni Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let startups = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"]
    let randomness = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"]


    @IBOutlet weak var existingStartups: UILabel!
    @IBOutlet weak var randomCategories: UILabel!
    
    @IBAction func shakeButtonTapped(_ sender: UIButton) {
//        print("Button was tapped!")
        
        let maxIndex = UInt32(startups.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        let maxIndexran = UInt32(randomness.count)
        let randomIndexran = Int(arc4random_uniform(maxIndexran))
        
        existingStartups.text = startups[randomIndex]
        randomCategories.text = randomness[randomIndexran]
        
    }
    
//    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
//        let maxIndex = UInt32(startups.count)
//        let randomIndex = Int(arc4random_uniform(maxIndex))
//    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

