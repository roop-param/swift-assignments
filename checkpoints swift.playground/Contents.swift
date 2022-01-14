import Cocoa


// creating constant holding any temperature,converting it to farhenheit and showing both
let tempCelsius = 35.2
let tempFahrenheit = ((tempCelsius * 9) / 5) + 32
print("The temperature in Celsius is \(tempCelsius)°C and in fahrenheit is \(tempFahrenheit)°F")



// to count unique number of items in array

let albums = ["red", "blue","yellow","pink","red"]
let uniqueString = Set(albums)
print("The total number of items in the array is \(albums.count) and total number of unique items in the array is \(uniqueString.count)")


// loop from 1 through 100, and for each number: multiple of 3,5 or both and if not print the number as it is.
for i in 1...100 {
    if i.isMultiple(of: 3) {
        if i.isMultiple(of: 5) {
            print("FizzBuzz the no. \(i ) is multiple of 3 or 5")
        } else {
            print("Fizz - the no. \(i ) is multiple of 3")
        }
    } else if i.isMultiple(of: 5) {
        print("Buzz - the no. \(i ) is multiple of 5")
    } else {
        print("\(i ) - the no. is not multiple of 3 or 5")
    }
}
 
// chechking the square root through try and catch

enum rootError : Error {
    case numberLessThan, canotFindSquareRoot,numberGreaterThan
}
func sqaureRoot(of number:Int) throws -> Int {
    if number < 1 {throw rootError.numberLessThan}
    if number > 10000 { throw rootError.numberGreaterThan}
    for   i in 1...100
    {
        if i *  i == number
        { return i }
    }
    throw rootError.canotFindSquareRoot
}
 let number = 625
    do {
        let root =  try sqaureRoot(of : number)
        print("the number \(root) is the square root of \(number)  ")
    }
              catch rootError.numberLessThan
              {
                  print("Please use number greater than 1 ")
              }
              catch rootError.numberGreaterThan
              {
                  print("Please use nuber less than 10,000")
                
              }
                catch rootError.canotFindSquareRoot
                {
                    print("Cannot find the square root of \(number)")
                  
                }
              catch
              {
                  print("there is an error \(error.localizedDescription)")
              }
