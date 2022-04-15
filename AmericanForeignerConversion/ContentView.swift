//
//  ContentView.swift
//  AmericanForeignerConversion
//
//  Created by Silver on 4/13/22.
//

import SwiftUI

struct ContentView: View {
           
    
    @State private var fahrenheit = 0.0
    @State private var celsiusInput = 0.0
    
    var convertedToCelsius: Double {
        let celsius = Double((fahrenheit - 32) * (5/9))
        return celsius
    }
    
    var convertedToFarenheit: Double {
        let farenheitConverted = Double((celsiusInput * (9/5)) + 32)
        return farenheitConverted
    }
    
    var body: some View {
        
        Form {
            
            //Fahrenheit to Celsius
        
            Section {
                TextField("Fahrenheit", value: $fahrenheit, format: .number)
                    .keyboardType(.decimalPad)
            }
        header: {
            Text("Fahrenheit to Celsius")
        }
            
            Section {
                Text(convertedToCelsius, format: .number)
            }
            
            
  
            //Celsius to Fahrenheit
  
            Section {
                TextField("Celsius", value: $celsiusInput, format: .number)
                    .keyboardType(.decimalPad)
            }
        header: {
            Text("Celsius to Fahrenheit")
        }
            Section {
                Text(convertedToFarenheit, format: .number)
            }
        
        }
    }

    
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
