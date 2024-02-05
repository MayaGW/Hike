//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Maya Ghamloush on 04/02/2024.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
  
        
        ZStack {
            //MARK: - 3. DEPTH
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y:12)
            //MARK: - 2. LIGHT
            
            Color(.colorGreenLight)
                .cornerRadius(40)
              .offset(y:3)
                .opacity(0.85)
            
            //MARK: - 1. SURFACE
            LinearGradient(
                colors: [.colorGreenLight,.colorGreenMedium],
                startPoint: .top,
                endPoint: .bottom)
            .cornerRadius(40)
           
        } .padding(20)
    }
}

#Preview {
    CustomBackgroundView()
}
