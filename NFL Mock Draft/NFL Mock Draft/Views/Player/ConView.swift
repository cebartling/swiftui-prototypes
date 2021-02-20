//
//  ConView.swift
//  NFL Mock Draft
//
//  Created by Christopher Bartling on 2/20/21.
//

import SwiftUI

struct ConView: View {
    let con: String
    
    var body: some View {
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

struct ConView_Previews: PreviewProvider {
    static var previews: some View {
        ConView(con: "Tendency to play high in pass protection. Leaves himself very susceptible to bull rush.")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
