//
//  HelpView.swift
//  AssignmentSwiftUI
//
//  Created by I-Store on 03.12.2019.
//  Copyright © 2019 I-Store. All rights reserved.
//

import SwiftUI


struct HelpView: View {
  
  @Binding var showAboutView: Bool
  
  var body: some View {
    NavigationView {
      VStack {
        List {
          NavigationLink(destination: QuestionsView()) {
            Text("Questions")
          }
          NavigationLink(destination: AboutView(), isActive: $showAboutView) {
            Text("About")
          }
        }
      }
      .navigationBarHidden(false)
      .navigationBarTitle("Help")
    }.navigationViewStyle(StackNavigationViewStyle()).padding()
  }
  
}

struct QuestionsView: View {
  var body: some View {
    Text("Questions")
  }
}

struct AboutView: View {
  var body: some View {
    Text("About")
  }
}
