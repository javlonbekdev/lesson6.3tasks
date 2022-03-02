//
//  SecondScreen.swift
//  lesson6.3tasks
//
//  Created by Javlonbek on 30/01/22.
//

import SwiftUI

struct SecondScreen: View {
//    @ObservedObject var settings: UserSettings
    @EnvironmentObject var settings: UserSettings
    var body: some View {
        Text("User ID: \(settings.id)")
        Text("User PW: \(settings.pw)")
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen()
    }
}
