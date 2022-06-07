//
//  ContentView.swift
//  New
//
//  Created by Икигай on 07.06.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Text("Yes")) {
                    Label("Hello, world!", systemImage: "globe")
                }
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .navigationTitle("Title")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("show")
                        show.toggle()}) {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $show) {
                Text("Sheet")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
