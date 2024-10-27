// Structures
struct Town {
    let name = "Angelaland"
    var citizens = ["Angela","Jack Bauer"]
    var resources = ["Grain": 100, "Ore": 42, "Wool": 75]
    
    func fortify() {
        print("Defences increased!")
    }
    
    
}

var myTown = Town()

print(myTown.citizens)
print("\(myTown.name) has \(myTown.resources["Grain"]!) bags of grain")

myTown.citizens.append("Keanu Reeves")
print(myTown.citizens.count)

myTown.fortify()



struct quiz {
    var question: String
    var answer: Bool
    
    func printQuestion(){
        print("Question: \(question)")
        print("Answer: \(answer)")
    }
}

var firstQuestion = quiz(question: "Darth Vader is a good guy", answer: false)
var secondQuestion = quiz(question: "Dune is an aquatic book", answer: false)
var thirdQuestion = quiz(question: "Mad Max is set in a postapocalyptic Australia", answer: true)

/**
print("My Swift Structure")

struct sithAcademy {
    var name: String
    var master: String
    var weapon: String
    
    func printSelf(){
        print("\(name) is the apprentice of \(master), and is wielding a \(weapon)")
    }
    
}

var sith = sithAcademy(name:"Darth Moebius", master: "Pingo",weapon: "Lightsaber")
sith.printSelf()

var nextSith = sithAcademy(name: "MonkeyMan", master: "Grey Kotlin", weapon: "Laserwhip")
nextSith.printSelf()

var secondSith = sithAcademy(name: "Darth Sebastian", master: "Shmip", weapon: "Voice of Brethren")

secondSith.printSelf()
 */
/**
import Foundation

var secondsRemaining = 60

func countdown() {

    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
        if secondsRemaining > 0 {
            print("\(secondsRemaining) seconds remaining")
            secondsRemaining -= 1
        } else {
            print("Time's up!")
            timer.invalidate() // Stop the timer when the countdown reaches 0
        }
    }
     
}

countdown()

func loveCalculator(){
    
    let randomInt = Int.random(in: 0...100)
    
    var loveScore = randomInt
    
    switch loveScore {
    case 80...100:
        print("You love each other like Kanye loves Kanye")
    case 40..<80:
        print("You go together like Coke and Mentos")
    case ...40:
        print("You'll be forever alone")
    default:
        print("Eror loveScore is out of range")
    }
}

loveCalculator()

var player1Username: String? = nil

player1Username = "jackbauerisawesome"

//var unwrappedP1Username = player1Username!

player1Username = nil

if player1Username != nil {
    print(player1Username!)

}

 */
