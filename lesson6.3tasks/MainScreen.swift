//
//  MainScreen.swift
//  lesson6.3tasks
//
//  Created by Javlonbek on 30/01/22.
//

import SwiftUI

struct MainScreen: View {
//    @ObservedObject var settings = UserSettings()
    @EnvironmentObject var settings: UserSettings
    var body: some View {
        NavigationView{
            VStack{
                TextField("User ID", text: $settings.id)
                    .padding(.leading)
                    .frame(maxWidth: .infinity).frame(height: 30)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray.opacity(0.4), lineWidth: 1))
                SecureField("User PW", text: $settings.pw)
                    .padding(.leading)
                    .frame(maxWidth: .infinity).frame(height: 30)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray.opacity(0.4), lineWidth: 1))
                NavigationLink(destination: SecondScreen()) {
                    Text("Show")
                    .frame(maxWidth: .infinity).frame(height: 34)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(5)
                }

            }.padding()
            
//                .navigationBarTitle("ObservedObject", displayMode: .inline)
                .navigationBarTitle("EnvironmentObject", displayMode: .inline)
        }
        
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
