//
//  SearchView.swift
//  AssignmentSwiftUI
//
//  Created by I-Store on 03.12.2019.
//  Copyright © 2019 I-Store. All rights reserved.
//

import SwiftUI


struct SearchView: View {
  
  @Binding var tabSelection: Int
  @Binding var showAboutView: Bool
  
  var body: some View {
    VStack {
      Text("Search").padding()
      
      Button(action: {
        self.tabSelection = 1
        self.showAboutView = true
      }) {
        Text("Open About View")
      }
    }
  }
  
}
