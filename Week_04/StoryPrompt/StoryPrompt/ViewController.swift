//
//  ViewController.swift
//  StoryPrompt
//
//  Created by J Rogel PhD on 06/09/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let storyPrompt = StoryPromptEntry()
        storyPrompt.noun = "toaster"
        storyPrompt.adjective = "smelly"
        storyPrompt.verb = "burp"
        storyPrompt.number = 10
        print(storyPrompt)
    }


}

