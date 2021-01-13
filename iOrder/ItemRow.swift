//
//  ItemRow.swift
//  iOrder
//
//  Created by Iurie Guzun on 2021-01-13.
//  Copyright © 2021 Iurie Guzun. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
    var item: MenuItem
    var body: some View {
        Text(item.name)
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
