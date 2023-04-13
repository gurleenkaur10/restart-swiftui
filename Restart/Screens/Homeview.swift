//
//  HomeView.swift
//  Restart
//
//  Created by Gurleen Kaur on 2023-04-13.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingviewActive = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Home View!").font(.largeTitle)
            
            Button(action:{isOnboardingviewActive = true}){
                Text("Restart")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
