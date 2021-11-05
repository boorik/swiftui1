//
//  ContentView.swift
//  SwiftUIArticle1
//
//  Created by Vincent BLANCHET on 22/06/2021.
//

import SwiftUI
class MyStruct: ObservableObject {
    internal init(myProp: Int) {
        self.myProp = myProp
    }
    var myProp: Int
    func increase() {
        myProp += 1
    }
}

struct TestState: View {
    @State var prop: MyStruct = MyStruct(myProp: 0)
    var body: some View {
        VStack {
            Text("\(prop.myProp)")
            Button {
                prop.increase()
            } label: {
                Text("Change Text")
            }
        }
    }
}
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
            TestState()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("TestState")
                }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
