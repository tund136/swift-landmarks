//
//  ContentView.swift
//  Landmarks
//
//  Created by Danh Tu on 30/09/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turle Rock")
                .font(.title)
            
            HStack {
                Text("Josua Tree National Park")
                    .font(.subheadline)
                
                Spacer()
                
                Text("California")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
