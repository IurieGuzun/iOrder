//
//  ItemRow.swift
//  iOrder
//
//  Created by Iurie Guzun on 2021-01-13.
//  Copyright © 2021 Iurie Guzun. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
    static let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    var item: MenuItem
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                .clipShape(Circle())
                .overlay(Circle()
                .stroke(Color.gray, lineWidth: 2))
            VStack(alignment: .leading){
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price)")
            }.layoutPriority(1)
            Spacer()
            ForEach(item.restrictions, id: \.self) { restriction in
                Text(restriction)
                .font(.caption)
                .fontWeight(.black)
                .padding(5)
                .background(Self.colors[restriction, default: .black])
                .clipShape(Circle())
                .foregroundColor(.white)
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
