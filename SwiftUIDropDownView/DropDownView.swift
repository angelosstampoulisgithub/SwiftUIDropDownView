//
//  DropDownView.swift
//  SwoftUIDropDownView
//
//  Created by Angelos Staboulis on 2/1/26.
//

import SwiftUI
struct DropdownView: View {
    let options: [String]
    @Binding var selectedOption: String
    
    @State private var isExpanded = false
    
    var body: some View {
        VStack(spacing: 0) {
            
            // Selected item
            Button {
                withAnimation {
                    isExpanded.toggle()
                }
            } label: {
                HStack {
                    Text(selectedOption)
                        .foregroundColor(.primary)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.down")
                        .rotationEffect(.degrees(isExpanded ? 180 : 0))
                        .animation(.easeInOut, value: isExpanded)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
            }
            
            // Dropdown list
            if isExpanded {
                VStack(spacing: 0) {
                    ForEach(options, id: \.self) { option in
                        Button {
                            selectedOption = option
                            withAnimation {
                                isExpanded = false
                            }
                        } label: {
                            HStack {
                                Text(option)
                                    .foregroundColor(.primary)
                                Spacer()
                            }
                            .padding()
                        }
                        .background(Color.white)
                        
                        Divider()
                    }
                }
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.white)
                        .shadow(radius: 4)
                )
            }
        }
    }
}
