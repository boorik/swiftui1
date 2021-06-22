//
//  ContentView.swift
//  SwiftUIArticle1
//
//  Created by Vincent BLANCHET on 22/06/2021.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().barTintColor = .white
    }
    var body: some View {
        TabView {
            SwiftUIView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("SwiftUI")
                }

            SeriesViewController()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("UIKit")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
