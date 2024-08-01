//
//  ContentView.swift
//  Stacks
//
//  Created by Artur Reiner on 01.08.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                HeaderView()
                
                HStack(spacing: 15) {
                    PlanView(planName: "Basic", price: 9, textColor: .white, backgroundColor: .purple, icon: nil)
                    
                    ZStack {
                        PlanView(planName: "Pro", price: 19, textColor: .black, backgroundColor: .gray, icon: nil)
                        
                        Text("Best for designer")
                            .font(.system(.caption, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .padding(5)
                            .background(.yellow)
                            .offset(x: 0, y: 87)
                    }
                }
                .padding(.horizontal)
                
                ZStack {
                    PlanView(planName: "Team", price: 299, textColor: .white, backgroundColor: .black, icon: "wand.and.rays")
                        .opacity(0.8)
                    .padding()
                    
                    Text("Perfect for teams with 20 members")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding(5)
                        .background(.yellow)
                        .offset(x: 0, y: 110)
                }
                
                Spacer()
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ContentView()
}
