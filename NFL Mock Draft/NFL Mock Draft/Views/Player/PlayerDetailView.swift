//
//  PlayerDetailView.swift
//  NFL Mock Draft
//
//  Created by Christopher Bartling on 2/19/21.
//

import SwiftUI

struct PlayerDetailView: View {
    let player: Player

    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            HStack(alignment: .top, content: {
                Text(player.fullName)
                    .font(.title2)
                    .fontWeight(.heavy)

                Spacer()
            })
                .padding(.horizontal)
                .padding(.top, 6)
                .padding(.bottom, 4)

            HStack(alignment: .top, content: {
                Text(player.position.uppercased())
                    .font(.title3)
                    .fontWeight(.semibold)

                Spacer()
            })
                .padding(.horizontal)
                .padding(.top, 4)
                .padding(.bottom, 4)

            HStack(alignment: .top, content: {
                Text(player.formattedHeight)
                    .font(.subheadline)
                    .fontWeight(.medium)

                Spacer()

                Text(player.formattedWeight)
                    .font(.subheadline)
                    .fontWeight(.medium)
            })
                .padding(.horizontal)
                .padding(.top, 4)
                .padding(.bottom, 4)

            

            
            ConsView(cons: player.cons)
            
            Spacer()
        })
    }
}

struct PlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetailView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
