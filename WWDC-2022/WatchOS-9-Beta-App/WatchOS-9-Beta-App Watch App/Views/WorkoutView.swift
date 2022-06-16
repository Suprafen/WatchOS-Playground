//
//  WorkoutView.swift
//  WatchOS-9-Beta-App Watch App
//
//  Created by Ivan Pryhara on 16.06.22.
//

import SwiftUI

struct WorkoutView: View {
    @State var isSettingsPresented: Bool = false
    @State var isTypeSelectPresented: Bool = false
    
    var body: some View {
        VStack {
            Button {
                
            } label: {
                ZStack {
                    Circle().foregroundColor(.blue)
                    Text("Start").foregroundColor(.white)
                }
                
            }.buttonStyle(.plain)
            
            Spacer()
            HStack {
                Button {
                    // TODO: Action...
                } label: {
                    Image(systemName: "gear")
                }
                        
                Button {
                    // TODO: Action...
                } label: {
                    Image(systemName: "line.3.horizontal")
                }.sheet(isPresented: $isSettingsPresented) {
                    
                }
            }
        }
        .navigationTitle("Workout")
    }
}

struct WorkoutViewPreview: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
