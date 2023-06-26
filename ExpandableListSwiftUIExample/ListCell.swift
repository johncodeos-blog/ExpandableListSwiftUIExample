//
//  ListCell.swift
//  ExpandableListSwiftUIExample
//
//  Created by John Codeos on 11/12/20.
//

import SwiftUI

struct ListCell: View {
    @State private var tapped: Bool = false
    var row: Int
    var question: String
    var answer: String

    var body: some View {
        VStack(spacing: 0) {
            Text(question)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(#colorLiteral(red: 0.737254902, green: 0.1294117647, blue: 0.2941176471, alpha: 1)))
                .foregroundColor(.white)
                .onTapGesture(perform: {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        tapped.toggle()
                    }
                })

            if tapped {
                Text(answer)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color(#colorLiteral(red: 0.6196078431, green: 0.1098039216, blue: 0.2509803922, alpha: 1)))
                    .clipped()
                    .background(Color.clear)
                    .foregroundColor(.white)
            }
        }
        .background(Color(#colorLiteral(red: 0.6196078431, green: 0.1098039216, blue: 0.2509803922, alpha: 1)))
    }
}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListCell(row: 0, question: "Lorem ipsum", answer: "Lorem ipsum")
    }
}
