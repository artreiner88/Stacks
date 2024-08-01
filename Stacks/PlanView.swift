//
//  PlanView.swift
//  Stacks
//
//  Created by Artur Reiner on 01.08.24.
//

import SwiftUI

struct PlanView: View {
    
    let planName: String
    let price: Int
    let textColor: Color
    let backgroundColor: Color
    let icon: String?
    
    var body: some View {
        VStack {
            if let icon = icon {
                Image(systemName: icon)
                    .font(.largeTitle)
                    .foregroundStyle(textColor)
            }
            
            
            Text(planName)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundStyle(textColor)
            Text("$\(price)")
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundStyle(textColor)
            Text("per month")
                .font(.headline)
                .foregroundStyle(textColor)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    PlanView(planName: "Name", price: 10, textColor: .white, backgroundColor: .purple, icon: nil)
}
