//
//  StoryPromptViewController.swift
//  StoryPrompt
//
//  Created by Jesus Rogel on 06/09/2022.
//

import UIKit

class StoryPromptViewController: UIViewController {

    @IBOutlet weak var storyPromptTextView: UITextView!
    
    var storyPrompt = StoryPromptEntry()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        storyPrompt.noun = "toaster"
        storyPrompt.verb = "swims"
        storyPrompt.adjective = "smelly"
        storyPrompt.number = 7
        
        storyPromptTextView.text = storyPrompt.description
    }
    

}
