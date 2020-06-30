import UIKit

func loveCalculator() {
  let randomNum: Int = Int.random(in: 0...100)
  
  if randomNum > 80 {
    print("You love each other like Kanye loves Kanye.")
  } else if randomNum > 40 {
    print("you go together like Coke and Mentos")
  } else {
    print("You'll be forever alone")
  }
}
loveCalculator()
