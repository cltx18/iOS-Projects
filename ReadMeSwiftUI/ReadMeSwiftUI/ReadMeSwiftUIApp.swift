//
//  ReadMeSwiftUIApp.swift
//  ReadMeSwiftUI
//
//  Created by Logan Thompson on 7/26/21.
//

import SwiftUI

@main
struct ReadMeSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(Library())
        }
    }
}
