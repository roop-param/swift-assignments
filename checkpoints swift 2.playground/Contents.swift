import Cocoa



// to filter out even numbers in array,sorting and mapping to string and printing them in different line

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
print("The sorted list in ascending order is \(luckyNumbers.sorted())")

let sortEvenNumbers = luckyNumbers.filter{$0.isMultiple(of: 2)}
print("The even numbers in the sorted list are \(sortEvenNumbers)")

print("The lucky numbers in the list are ")
func isOddNumbers(number: Int) -> Bool{
    number.isMultiple(of: 2) == false
}
func luckyString(_ number: Int) -> String {
    "\(number) is a lucky number."
}
func printValue(_ string: String) {
    print(string)
}
luckyNumbers.filter(isOddNumbers).sorted().map(luckyString).forEach(printValue)


//class and subclasses

class Animals{
    let legs : Int
     init(legs: Int ){
        self.legs = legs
    }
    
}

class Dog: Animals {
    func speak()
    {
        print("This is dog class - subclas of animal class")
    }
    
}
final class samoyed : Dog
{
    override func speak() {
        print("this is first subclass samoyed dog - dog subclass")
    }
}

class Cat :Animals {
    let isTame : Bool

    init(legs: Int, isTame:Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak()
    {
        print("This is a cat class inherited from animal")
    }
}
class IndianCat: Cat {
    override func speak() {
        print("This is sub class of Cat Class")
    }
}

let brown = Cat(legs: 4, isTame: false)


// building a protocol that describes a building, adding various properties and methods, then create two structs, House and Office, that conform to it.

protocol Building
{
    var rooms : Int {get}
    var cost : Int {get set}
    var agent : String {get set}
     func saleSummary()
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var agent: String
    
    func saleSummary() {
        print(" Talk to \(agent) to buy the office  \(cost) $")    }
    
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var agent: String
    
    func saleSummary() {
        print(" Talk to \(agent) to buy the house \(cost) $")
    }
    
}

let hyenaHouse = House(rooms: 5, cost: 500_000, agent: "Matt" )
hyenaHouse.saleSummary()

let jacobOffice = Office(rooms: 20, cost: 10_00_000, agent: "Caroline")
jacobOffice.saleSummary()

