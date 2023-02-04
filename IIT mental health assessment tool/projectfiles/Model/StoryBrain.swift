 
    import Foundation
    
    struct StoryBrain {
        
        var storyNumber = 0
        
        let stories = [
          Story(
                title: "Have you ever experienced a terrible occurrence that has impacted you significantly? Examples may include being the victim of armed assault, witnessing a tragedy happen to someone else, surviving a sexual assault, or living through a natural disaster.",
                choice1: "Yes", choice1Destination: 2,
                choice2: "No", choice2Destination: 1
            ),
           Story(
                title: "Do you ever feel that you’ve been affected by feelings of edginess, anxiety, or nerves?",
                choice1: "Yes", choice1Destination: 2,
                choice2: "No", choice2Destination: 3
            ),
          Story(
                title: "Have you experienced a week or longer of lower-than-usual interest in activities that you usually enjoy? Examples might include work, exercise, or hobbies.",
                choice1: "Yes", choice1Destination: 3,
                choice2: "No", choice2Destination: 4
            ),
          Story(
                title: "Have you ever experienced an ‘attack’ of fear, anxiety, or panic?",
                choice1: "Yes", choice1Destination: 5,
                choice2: "No", choice2Destination: 4
            ),
          Story(
                title: "Do feelings of anxiety or discomfort around others bother you?",
                choice1: "Yes", choice1Destination: 5,
                choice2: "No", choice2Destination: 6
            ),
          Story(
                title: "Results: Displays signs of a mental health disorder. Please seek guidance from a professional.",
                choice1: "Click to restart.", choice1Destination: 0,
                choice2: "", choice2Destination: 0
            ),
          Story(
                title: "Results: Displays signs of a positive mental health. Continue with these healthy habits and do not be afraid to seek support when necessary.",
                choice1: "Click to restart.", choice1Destination: 0,
                choice2: "", choice2Destination: 0
            ),
          Story(
                title: "Results: Displays signs of a mental health disorder. Please seek guidance from a professional.",
                choice1: "Click to restart.", choice1Destination: 0,
                choice2: "", choice2Destination: 0
            )
        ]
        
        func getStoryTitle() -> String {
            return stories[storyNumber].title
        }
        
        func getChoice1() -> String {
            return stories[storyNumber].choice1
        }
        
        func getChoice2() -> String {
            return stories[storyNumber].choice2
        }
        
        mutating func nextStory(userChoice: String) {
            
            let currentStory = stories[storyNumber]
            if userChoice == currentStory.choice1 {
                storyNumber = currentStory.choice1Destination
            } else if userChoice == currentStory.choice2 {
                storyNumber = currentStory.choice2Destination
            }
        }
        
    }
    
    
