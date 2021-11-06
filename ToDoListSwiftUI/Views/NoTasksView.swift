//
//  NoTasksView.swift
//  ToDoListSwiftUI
//
//  Created by Олег Федоров on 05.11.2021.
//

import SwiftUI

struct NoTasksView: View {
    
    @State private var animate = false
    let secondaryAccentColor = Color("SecondaryAccentColor")
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("There are no tasks!")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("Are you a productive Person? I think you should click the add button and add a bunch of tasks to your todo list!")
                    .padding(.bottom, 20)
                NavigationLink(destination: AddView()) {
                    Text("Add Something 🥳")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? secondaryAccentColor :
                                        Color.accentColor)
                        .cornerRadius(10)
                }
                .padding(.horizontal, animate ? 30 : 50)
                .shadow(
                    color: animate ? secondaryAccentColor .opacity(0.7) :
                        Color.accentColor.opacity(0.7),
                    radius: animate ? 30 : 10,
                    x: 0,
                    y: animate ? 50 : 30
                )
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(y: animate ? -7 : 0)
            }
            .frame(maxWidth: 400)
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    private func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
}

struct NoTasksView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NoTasksView()
                .navigationTitle("Title")
        }
    }
}
