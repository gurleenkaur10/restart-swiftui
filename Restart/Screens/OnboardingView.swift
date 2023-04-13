//
//  OnboardingView.swift
//  Restart
//
//  Created by Gurleen Kaur on 2023-04-13.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("onboarding") var isOnboardingviewActive = true
    
    var body: some View {
        ZStack {
            Color("ColorBlue").ignoresSafeArea(.all,edges: .all)
            VStack(spacing: 20) {
                //MARK: Header
                Spacer()
                VStack(spacing: 0){
                    Text("Share.").font(.system(size: 60)).fontWeight(.heavy).foregroundColor(.white)
                    Text("""
                         It's not how much we give
                         but how much we put into giving
                         """).font(.title3).foregroundColor(.white).fontWeight(.light).multilineTextAlignment(.center).padding(.horizontal, 10)
                }
                Spacer()
                //MARK: Center
                ZStack{
                    ZStack{
                        Circle().stroke(.white.opacity(0.2), lineWidth: 40).frame(width: 260,height: 260,alignment: .center )
                        Circle().stroke(.white.opacity(0.2),lineWidth: 80).frame(width: 260,height: 260,alignment: .center)
                    }//Z2
                    Image("character-1").resizable().scaledToFit()
                    
                }//Z1
                Spacer()
                //MARK: Footer
                Spacer()
                //Background Static
                ZStack{
                    Capsule().fill(Color.white.opacity(0.2))
                    Capsule().fill(Color.white.opacity(0.2)).padding(8)
                    
                //Call-to-Action
                    Text("Get Started").foregroundColor(.white).font(.system(.title3, design: .rounded, weight: .bold)).offset(x: 20)
                    
                //Capsule(dynamic width)
                
                    HStack{
                        Capsule().fill(Color("ColorRed")).frame(width: 80)
                        Spacer()
                    }
                //Circle draggable
                    HStack {
                        ZStack{
                            Circle().fill(Color("ColorRed"))
                            Circle().fill(Color.black.opacity(0.15)).padding(8)
                            Image(systemName: "chevron.right.2").font(.system(size: 24, weight: .bold))
                        }.foregroundColor(.white).frame(width: 80,height: 80,alignment: .center).onTapGesture {
                            isOnboardingviewActive = false
                        }
                    Spacer()
                    }
                    
                }.frame(height: 80, alignment: .center).padding()//Zf
            }//V
        }//Z
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
