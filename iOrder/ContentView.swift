//
//  ContentView.swift
//  iOrder
//
//  Created by Iurie Guzun on 2021-01-13.
//  Copyright © 2021 Iurie Guzun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) {section in
                    Text(section.name)
                    ForEach(section.items) { item in
                        Text(item.name)
                    }                }
            }.navigationBarTitle("Menu")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
