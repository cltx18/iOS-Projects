//
//  ContentView.swift
//  TrackAndTrace
//
//  Created by Logan Thompson on 8/20/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured




    enum Tab {
        case list
        case featured
        case profile
        case samples
    }

    var body: some View {

        TabView(selection: $selection) {
            
            HomeView()
                  .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(Tab.featured)
            SampleListView()
                .tabItem {
                    Label("Samples", systemImage: "doc.text.magnifyingglass")
                }
                .tag(Tab.samples)

            CategoryHome()
                .environmentObject(ModelData())
                .tabItem {
                    Label("Shop", systemImage: "bag")
                }
                .tag(Tab.list)

            ProfileHost()
                .environmentObject(ModelData())

                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
                .tag(Tab.profile)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
