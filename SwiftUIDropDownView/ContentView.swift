//
//  ContentView.swift
//  SwiftUIDropDownView
//
//  Created by Angelos Staboulis on 2/1/26.
//

import SwiftUI

struct ContentView: View {
    @State private var selected = "Select option"
    
    let items = [
        "Apple",
        "Banana",
        "Orange",
        "Strawberry"
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            
            DropdownView(
                options: items,
                selectedOption: $selected
            )
            
            Text("Selected: \(selected)")
                .font(.headline)
            
            Spacer()
        }
        .padding()
    }
}

