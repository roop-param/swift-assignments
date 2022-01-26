//
//  ContentView.swift
//  Temperature Conversion
//
//  Created by paramroop kaur on 26/01/22.
//

import SwiftUI

struct ContentView: View {
    @State private var input = 0.0
        
    var conversionValue: Double {
    let tempFahrenheit = (((input * 9) / 5) + 32)
    return tempFahrenheit
        }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                TextField("Enter the value",value: $input,format: .number)
                } header:{ Text("Enter the Value in Celsuis ") }
                
                        
                Section {
                Text(conversionValue,format: .number)
                } header:{ Text("The conversed Value in Fahrenheit ") }
                        
                } .navigationTitle("Temperature Conversion")
                 .navigationBarTitleDisplayMode(.inline)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
