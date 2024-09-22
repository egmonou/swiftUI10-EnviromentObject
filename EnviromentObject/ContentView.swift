//
//  ContentView.swift
//  EnviromentObject
//
//  Created by administrator on 22/09/2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userViewModel: userViewMOdel
    
    var body: some View {
        NavigationStack {
            VStack {
   
                Text("ContentView: \(userViewModel.name)")
                    .font(.title)
                NavigationLink("update data", destination: UserDataView())
            }
            .padding()
            .navigationTitle("Parnet View")
        }
    }
}


struct UserDataView: View {
    @EnvironmentObject var userViewModel: userViewMOdel
    
    var body: some View {
        VStack {
            Text("Name: \(userViewModel.name)")
                .font(.title)
            TextField("Enter Name", text: $userViewModel.name)
                .padding()
                .background(Color.blue.opacity(0.3))
        }
        .padding()
        .navigationTitle("Child View")
    }
    
}

#Preview {
    ContentView()
        .environmentObject(userViewMOdel())
}
