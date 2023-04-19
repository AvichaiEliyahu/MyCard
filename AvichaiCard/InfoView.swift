//
//  InfoView.swift
//  AvichaiCard
//
//  Created by Avichai Eliyahu on 09/04/2023.
//

import SwiftUI


struct InfoView: View {
    var text: String
    var imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName).foregroundColor(.blue)
                Text(text)
                    .font(Font.custom("JosefinSans-Italic-VariableFont_wght", size: 20))
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
