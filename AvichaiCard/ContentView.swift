//
//  ContentView.swift
//  AvichaiCard
//
//  Created by Avichai Eliyahu on 09/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 52/255,green: 152/255,blue: 219/255)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("avichai")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 3))
                
                Text("Avichai Eliyahu")
                    .font(Font.custom("JosefinSans-Italic-VariableFont_wght", size: 40))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                Text("iOS Developer")
                    .foregroundColor(Color.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "052-7077165", imageName: "phone.circle")
                InfoView(text: "avihayboom@gmail.com", imageName: "mail")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

