//
//  ListView.swift
//  ARAction 0.2
//
//  Created by Chris Cheng on 2022/6/18.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List(ActionItems) {ActionItem in
                ActionItemView(image: ActionItem.image, message: ActionItem.message)
            }.navigationBarTitle("热点和附近")
            
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

struct ActionItemView: View {
    var image: String
    var message: String
    
    var body: some View {
        HStack {
            NavigationLink(destination: DetailView()) {
                    Image(image).resizable().frame(width: 50, height: 50)
                    Text(message)
            }
        }
    }
}

struct ActionItem: Identifiable {
    let id: String
    let image: String
    let message: String
}

let ActionItems = [
    ActionItem(id: "1", image: "IconImage", message: "Helllo World One"),
    ActionItem(id: "2", image: "IconImage", message: "Helllo World Two"),
    ActionItem(id: "3", image: "IconImage", message: "Helllo World Three"),
    ActionItem(id: "4", image: "IconImage", message: "Helllo World Four"),
    ActionItem(id: "5", image: "IconImage", message: "Helllo World Five"),
    ActionItem(id: "6", image: "IconImage", message: "Helllo World Six"),
    ActionItem(id: "7", image: "IconImage", message: "Helllo World Seven"),
    ActionItem(id: "8", image: "IconImage", message: "Helllo World Eight"),
    ActionItem(id: "9", image: "IconImage", message: "Helllo World Nine"),
    ActionItem(id: "10", image: "IconImage", message: "Helllo World Ten"),
    ActionItem(id: "11", image: "IconImage", message: "Helllo World Eleven"),
]
