//
//  ContentView.swift
//  ARAction 0.2
//
//  Created by Chris Cheng on 2022/6/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.229368031, green: 0.4043782353, blue: 0.4911202192)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Spacer()
                Text("Welcome to AR Action")
                    .font(Font.custom("ZCOOLXiaoWei-Regular", size: 24))
                    .foregroundColor(Color(red: 0.882, green: 0.882, blue: 0.882))
                
                Text("增强现实的视频记录工具")
                    .font(Font.custom("ZCOOLXiaoWei-Regular", size: 18))
                    .foregroundColor(Color(red: 0.819, green: 0.706, blue: 0.019))
                Spacer()
                
                Button(action: {
                    // let listView = ListView()
                    print("Buttom Clicked!")
                }) {
                    Image("IconImage").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 250, alignment: .center)
                }
                Spacer()
                
                Text("增强·现场·真实")
                    .font(Font.custom("ZCOOLXiaoWei-Regular", size: 18))
                    .foregroundColor(Color(red: 1.0, green: 0.88, blue: 0.88))
                    .padding(.leading)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 12 mini"))
        }
    }
}
