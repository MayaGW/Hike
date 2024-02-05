//
//  CustomButtonView.swift
//  Hike
//
//  Created by Maya Ghamloush on 04/02/2024.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(
                    LinearGradient(
                        colors:
                            [.white,
                             .colorGreenLight,
                             .colorGreenMedium],
                        startPoint: .top,
                        endPoint: .bottom))
            Circle()
                .stroke(
                    LinearGradient(
                        colors: [
                            .colorGrayLight,
                            .colorGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom),lineWidth: 4)
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .colorGrayLight,
                            .colorGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom))
                
        }//Zstack
        .frame(width: 58, height: 58, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

#Preview (traits: .sizeThatFitsLayout){
    CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
