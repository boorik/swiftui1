//
//  SwiftUIView.swift
//  SwiftUIArticle1
//
//  Created by Vincent BLANCHET on 22/06/2021.
//

import SwiftUI

struct SwiftUIView: View {

    @State var data: [String] = [
        "The Wire",
        "Breaking Bad",
        "Dexter",
        "Queen of the South",
        "The OA",
        "Stranger Things",
        "Narcos",
        "True Detective",
        "Game of Thrones"
    ]

    var body: some View {
        VStack(spacing: .zero) {
            Text("Series")
                .font(.title)
            Spacer()
                ForEach(data, id: \.self) { text in
                    VStack(spacing: .zero) {
                        HStack(spacing: .zero) {
                            Text(text)
                            Spacer()
                            Button(action: {
                                moveToTop(text)
                            }, label: {
                                Text("Move to top")
                            })
                        }
                        .padding(.vertical, 16)
                        Divider()
                    }
                }
            Spacer()
        }
        .padding(16)
    }

    private func moveToTop(_ serie: String) {
        data.removeAll { value in
            value == serie
        }
        data.insert(serie, at: 0)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
