//
//  NoItemsView.swift
//  TodoListApp
//
//  Created by CustomAR LLC on 17.08.24.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    let secondaryAccentColor = Color("SecondaryAccentColor")
    
    var body: some View {
       ScrollView {
           VStack(spacing:10){
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you a productive person? I think you should click the add button and add bunch of items to your todo list!")
                   .padding(.bottom,20)
               NavigationLink(
                destination: AddView(),
                label: {
                    Text("Add something 🤩")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(animate ? secondaryAccentColor: Color.accentColor)
                        .cornerRadius(10)
                        .padding(.horizontal, animate ? 30 : 50)
                        .offset(y: animate ? -7 : 0)
                        .shadow(
                            color: animate ? secondaryAccentColor.opacity(0.7): Color.accentColor.opacity(0.7),
                            radius:animate ? 30 : /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,
                            x: 0,
                            y: animate ? 50 : 30
                        )
                })
            }
            .frame(maxWidth: 400)
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform:addAnimation)
        }
       .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation(){
        guard !animate else {return}
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ){
                animate.toggle()
            }
        }
    }
}

#Preview {
    NavigationView{
        NoItemsView().navigationTitle("Title")
    }
    
}
