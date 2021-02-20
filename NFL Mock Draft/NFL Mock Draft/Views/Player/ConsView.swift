//
//  ConView.swift
//  NFL Mock Draft
//
//  Created by Christopher Bartling on 2/20/21.
//

import SwiftUI

struct ConsView: View {
    let cons: [String]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Text("Cons")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
            .padding(.top, 20)
            .padding(.bottom, 4)

            ForEach(cons, id: \.self) { con in
                HStack(alignment: .top) {
                    Text(con)
                        .font(Font.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                        .padding(.leading, 12)
                        .padding(.top, 8)
                        .padding(.bottom, 8)
                }
                .overlay(
                    Capsule().fill(Color.red).frame(width: 6),
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

struct ConView_Previews: PreviewProvider {
    static var previews: some View {
        ConsView(cons: players[0].cons)
            .previewLayout(.sizeThatFits)
            .padding(8)
    }
}
