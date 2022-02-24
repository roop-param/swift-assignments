//
//  ContentView.swift
//  project1
//
//  Created by paramroop kaur on 31/01/22.
//

import SwiftUI

struct ContentView: View {
    @State private var input = 0.0
  @State private var inputUnit = "Meters"
  @State private var outputUnit = "KiloMeters"
    
  let units = ["Meters","KiloMeters","Yards","Miles","Feet"]
    
    var result : String {
        let inputMultiplier : Double
        let outputMultiplier : Double
        
        switch inputUnit {
        case "Feet": inputMultiplier = 0.3048
        case "KiloMeters": inputMultiplier = 1000
        case "Yards" : inputMultiplier = 0.9144
        case "Miles" : inputMultiplier = 1609.34
        default : inputMultiplier = 1.0
        }
        
        switch outputUnit {
        case "Feet": outputMultiplier = 3.28084
        case "KiloMeters": outputMultiplier = 0.001
        case "Yards" : outputMultiplier = 1.09361
        case "Miles" : outputMultiplier = 0.000621371
        default : outputMultiplier = 1.0
        }
        
        let inputMeters = input * inputMultiplier
        let output = inputMeters * outputMultiplier
        
        let outputValue = output.formatted()
        return "\(outputValue) \(outputUnit.lowercased())"
    }
   
    var body: some View {
    NavigationView {
        Form {
                Section {
                    TextField("Amount",value: $input,format: .number)
                } header: { Text("Amount to Convert")}
                
                Picker("Convert from",selection: $inputUnit) {
                    ForEach(units,id: \.self)
                    { Text($0) }
                }
                
                Picker("Convert to",selection: $outputUnit) {
                    ForEach(units,id: \.self)
                    { Text($0) }
                }
                
                Section{
                    Text(result)
                } header: {
                    Text("Result")
                }
    
                } .navigationTitle(" Length Conversion")
                 .navigationBarTitleDisplayMode(.inline)
           
            }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
