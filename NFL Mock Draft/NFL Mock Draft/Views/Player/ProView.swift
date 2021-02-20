//
//  ProView.swift
//  NFL Mock Draft
//
//  Created by Christopher Bartling on 2/20/21.
//

import SwiftUI

struct ProView: View {
    let pro: String
    
    var body: some View {
        HStack(alignment: .top) {
            Rectangle()
                .frame(width: 6, height: 50)
                .fixedSize()
                .foregroundColor(Color.green)
                
            Text(pro)
                .font(Font.caption)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
        .padding(.horizontal)
        .padding(.top, 4)
        .padding(.bottom, 4)
    }
}

struct ProView_Previews: PreviewProvider {
    static var previews: some View {
        ProView(pro: "Terrific overall athlete. Looked like a tight end when he scored a TD against WVU in 2019.")
    }
}
