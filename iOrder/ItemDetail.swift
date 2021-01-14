//
//  ItemDetail.swift
//  iOrder
//
//  Created by Iurie Guzun on 2021-01-14.
//  Copyright © 2021 Iurie Guzun. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var order: Order
    var item: MenuItem
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing){
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                    .padding()
                Text("Photo: \(item.photoCredit)")
                .padding(4)
                .background(Color.black)
                .font(.caption)
                .foregroundColor(.white)
                .offset(x: -5, y: -5)
                .padding()
            }
            Text(item.description)
                .padding()
            Button("Order This") {
                self.order.add(item: self.item)
            }.font(.headline)
            Spacer()
        }
        .navigationBarTitle(Text(item.name), displayMode: .inline)
        
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static let order = Order()

    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example).environmentObject(order)
        }
    }

}
