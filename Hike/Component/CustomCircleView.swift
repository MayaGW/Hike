//
//  CustomCircleView.swift
//  Hike
//
//  Created by Maya Ghamloush on 05/02/2024.
//

import SwiftUI

struct CustomCircleView: View {
    var body: some View {
        Circle()
            .fill(LinearGradient(
                colors: [.colorIndigoMedium,.colorSalmonLight], startPoint: .topLeading, endPoint: .bottomTrailing))
            .frame(width: 256, height: 256, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
    }
}

#Preview {
    CustomCircleView()
}
