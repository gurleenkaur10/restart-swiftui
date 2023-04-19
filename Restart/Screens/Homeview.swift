//
//  HomeView.swift
//  Restart
//
//  Created by Gurleen Kaur on 2023-04-13.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingviewActive = false
    
    @State private var isAnimating: Bool = false
    
    var body: some View {

        VStack(spacing: 20) {
            
            //MARK: Header
            Spacer()
            
            ZStack {
                
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                
                Image("character-2").resizable().scaledToFit().padding()
                    .offset(y: isAnimating ? 35 : -35)
                    .animation(
                        Animation
                            .easeInOut(duration: 4)
                            .repeatForever()
                        ,value: isAnimating
                        )
            }
            
            //MARK: Center
            
            Text("The time that lead to mastery is dependent on the intensity of our focus.")
                .font(.title)
                .fontWeight(.light)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding()
            //MARK: Footer
            Spacer()
            
            Button(action:{
                withAnimation{
                    isOnboardingviewActive = true
                    playSound(sound: "success", type: "m4a")
                }
            }){
                
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }.onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5 , execute: {
                isAnimating = true
            })
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
