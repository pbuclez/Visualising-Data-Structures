//
//  ContentView.swift
//  VisualisingDataStructures
//
//  Created by Pierre Buclez on 15/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form {
                NavigationLink("Stack", destination: StackView())
                NavigationLink("Queue", destination: QueueView())
                NavigationLink("Linked list", destination: LinkedListView())
                    .navigationTitle("")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
