//
//  ContentView.swift
//  WatchOS-9-Beta-App Watch App
//
//  Created by Ivan Pryhara on 16.06.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationStack{
                Image(systemName: "square.and.arrow.down")
            }
            
            NavigationStack {
                WorkoutView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
