//
//  ContentView.swift
//  ExpandableListSwiftUIExample
//
//  Created by John Codeos on 11/12/20.
//

import SwiftUI

struct ContentView: View {
    var itemsArray = Data().items

    init() {
        let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
            appearance.backgroundColor = UIColor(#colorLiteral(red: 0.737254902, green: 0.1294117647, blue: 0.2941176471, alpha: 1))
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = UINavigationBar.appearance().standardAppearance
    }

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 0) {
                    ForEach(0..<itemsArray.count) { row in
                        ListCell(row: row, question: itemsArray[row].question, answer: itemsArray[row].answer)
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("ExpandableListSwiftUIExample")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
