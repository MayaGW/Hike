//
//  CustomCircleView.swift
//  Hike
//
//  Created by Maya Ghamloush on 05/02/2024.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(
                    colors: [.colorIndigoMedium,.colorSalmonLight], startPoint: isAnimateGradient ? .topLeading : .bottomLeading, endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing))
                .onAppear{
                    withAnimation(.linear(duration: 3).repeatForever(autoreverses: true)){
                        isAnimateGradient.toggle()
                    }
                    
                }//Ztack
           MotionAnimationView()
            
        }
        .frame(width: 256, height: 256, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CustomCircleView()
}
