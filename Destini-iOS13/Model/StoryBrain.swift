//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation


struct StoryBrain {
    var storyNumber = 0
    
    let stories = [
                Story(
                    title: "You just went to the dentist this morning, and you friend call you to hang out tonight",
                    choice1: "Yes! It has been a while!", choice1Destination: 2,
                    choice2: "Maybe not? I'm kinda tired today", choice2Destination: 1
                ),
                Story(
                    title: "So you decided to stay at home, but you have nothing better to do.",
                    choice1: "Call your friend back and tell you wanna go out!", choice1Destination: 2,
                    choice2: "What about snapchat a girl from Hong Kong to kill time.", choice2Destination: 3
                ),
                Story(
                    title: "So you went out tonight and you decide to meet. But what time should we meet?",
                    choice1: "Night", choice1Destination: 5,
                    choice2: "Afternoon", choice2Destination: 4
                ),
                Story(
                    title: "You wasted your time and you know you have zero interest in those girl. You ghost them again after",
                    choice1: "The", choice1Destination: 0,
                    choice2: "End", choice2Destination: 0
                ),
                Story(
                    title: "So you went out with your friend in the afternoon. Have food and doing dumb things together. But he think it would be more fun if we hang out at night!!!",
                    choice1: "The", choice1Destination: 0,
                    choice2: "End", choice2Destination: 0
                ),
                Story(
                    title: "So you guys meet at Town Hall tonight and decide to do pub crawling. Later on that day, you go to the Side Bar. And your friend start talking to another two girls.",
                    choice1: "The", choice1Destination: 0,
                    choice2: "End", choice2Destination: 0
                )
            ]
    
    
    mutating func nextStory(userChoice: String) {
               
               let currentStory = stories[storyNumber]
               if userChoice == currentStory.choice1 {
                   storyNumber = currentStory.choice1Destination
               } else if userChoice == currentStory.choice2 {
                   storyNumber = currentStory.choice2Destination
               }
           }
    
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    
    func getChoice1() -> String{
        stories[storyNumber].choice1
    }
    
    func getChoice2() -> String{
        stories[storyNumber].choice2
    }
    
}
