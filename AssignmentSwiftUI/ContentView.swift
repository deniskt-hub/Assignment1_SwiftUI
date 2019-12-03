//
//  ContentView.swift
//  AssignmentSwiftUI
//
//  Created by I-Store on 03.12.2019.
//  Copyright © 2019 I-Store. All rights reserved.
//

import SwiftUI


struct ContentView: View {
  
  @State private var selection = 0
  @State private var showAboutView = false
  
  var body: some View {
    TabView(selection: $selection) {
      SearchView(tabSelection: $selection, showAboutView: $showAboutView)
        .tabItem {
          VStack {
            Text("Search")
            Image(systemName: "magnifyingglass")
          }
        }
        .tag(0)
      
      HelpView(showAboutView: $showAboutView)
        .tabItem {
          Text("Help")
          Image(systemName: "questionmark")
        }
        .tag(1)
      
      ProfileView()
        .tabItem {
          Text("Profile")
          Image(systemName: "person")
        }
        .tag(2)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

