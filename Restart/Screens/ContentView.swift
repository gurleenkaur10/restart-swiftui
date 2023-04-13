//
//  ContentView.swift
//  Restart
//
//  Created by Gurleen Kaur on 2023-04-13.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingviewActive = true
    
    
    var body: some View {
        
        ZStack{
            if isOnboardingviewActive{
                OnboardingView()
            }
            else
            {
                HomeView()
            }
        }
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
