//
//  ContentView.swift
//  project1
//
//  Created by paramroop kaur on 31/01/22.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 0
    @State private var tipPercentage = 0
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }

    var checkPerPerson: Double {
        _ = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
      
        return grandTotal
    }
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                      
                    Picker("Number of people", selection: $numberOfPeople) {
                            ForEach(2 ..< 100) {
                                Text("\($0) people")
                            }
                        }
                 }
                Section {
                    Picker("Tip percentage", selection: $tipPercentage) {
                            ForEach(0 ..< 101) {
                                Text("\($0) percentage")
                        }
                    }
                
                   } header: {
                       Text("How much tip do you want to leave?")
                   }

                Section {
                    Text(checkPerPerson,format: .number)
                } header: {
                    Text("The Amount for original value and tip value")
                }
                
                Section {
                        Text(totalPerPerson, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                } header: {
                    Text("Amount Per Person")
                }
    
                } .navigationTitle(" WeSplit")
                 .navigationBarTitleDisplayMode(.inline)
           
            }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
