//
//  ContentView.swift
//  FirstTestApp
//
//  Created by Yakup Yazar on 22.06.2023.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State private var selectedObject: String? = nil
    
    var body: some View {
        NavigationView {
            List(selection: $selectedObject) {
                Text("Nesne 1").tag("Nesne 1")
                Text("Nesne 2").tag("Nesne 2")
                Text("Nesne 3").tag("Nesne 3")
            }
            .listStyle(SidebarListStyle())
            .frame(minWidth: 150, idealWidth: 200, maxWidth: 250)
            
            if let selectedObject = selectedObject {
                Text(selectedObject)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding()
                    .navigationBarTitle(Text(selectedObject))
            } else {
                Text("Bir nesne seçin")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding()
                    .navigationBarTitle(Text("Seçim Yapılmadı"))
            }
        }
        .frame(minWidth: 500, idealWidth: 700, maxWidth: .infinity, minHeight: 400, idealHeight: 500, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
