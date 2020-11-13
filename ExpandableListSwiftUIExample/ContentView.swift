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
        UINavigationBar.appearance().barTintColor = #colorLiteral(red: 0.737254902, green: 0.1294117647, blue: 0.2941176471, alpha: 1)
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false

        // Use expanded view's color as the ScrollView background color to make it look better when the cell expands/collapses
        UIScrollView.appearance().backgroundColor = UIColor(Color(#colorLiteral(red: 0.6196078431, green: 0.1098039216, blue: 0.2509803922, alpha: 1)))
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
