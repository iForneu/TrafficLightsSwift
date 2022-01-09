//
//  ChangeColorButton.swift
//  TrafficLightsSwift
//
//  Created by Kirill Korotaev on 09.01.2022.
//

import SwiftUI

struct ChangeColorButton: View {
    let title: String
    let action: () -> ()
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
        }
        .padding()
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.white, lineWidth: 4))
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorButton(title: "START", action: {})
    }
}
