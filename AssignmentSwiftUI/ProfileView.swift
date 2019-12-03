//
//  ProfileView.swift
//  AssignmentSwiftUI
//
//  Created by I-Store on 03.12.2019.
//  Copyright © 2019 I-Store. All rights reserved.
//

import SwiftUI


struct ProfileView: View {
  
  @State private var showModal = false
  
  var body: some View {
    Button(action: { self.showModal = true }) {
      Text("Show Modal")
    }
    .sheet(isPresented: $showModal) {
      ModalView(showModal: self.$showModal)
    }
//    .betterSheet(isPresented: self.$showModal, onDismiss: { print("Modal dismissed") }) {
//      ModalView()
//    }
  }
  
}


struct ModalView: View {
  
  @Binding var showModal: Bool
  
  var body: some View {
    VStack {
      Text("Modal View").padding()
      
      Button(action: {
        self.showModal = false
      }) { 
        Text("Dismiss")
      }
    }
    
  }
}
