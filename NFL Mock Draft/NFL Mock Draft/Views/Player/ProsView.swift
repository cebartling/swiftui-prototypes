//
//  ProView.swift
//  NFL Mock Draft
//
//  Created by Christopher Bartling on 2/20/21.
//

import SwiftUI

struct ProsView: View {
    let pros: [String]

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Text("Pros")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
            .padding(.top, 20)
            .padding(.bottom, 4)
            
            ForEach(pros, id: \.self) { pro in
                HStack(alignment: .top) {
                    Text(pro)
                        .font(Font.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                        .padding(.leading, 12)
                        .padding(.top, 8)
                        .padding(.bottom, 8)
                }
                .overlay(
                    Capsule().fill(Color.green).frame(width: 6),
                    alignment: .leading
                )
                .padding(.horizontal)
                .padding(.top, 4)
                .padding(.bottom, 4)
            }
        }
        .padding(0)
   }
}

struct ProView_Previews: PreviewProvider {
    static var previews: some View {
        ProsView(pros: players[0].pros)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
