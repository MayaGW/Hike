//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Maya Ghamloush on 05/02/2024.
//

import SwiftUI

struct MotionAnimationView: View {
    //MARK: -PROPERTIES
    
    @State private var randomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimated: Bool = false
    //MARK: -FUNCTIONS
    //1.RANDOM COORDINATES
    func randomCoordinates() -> CGFloat{
        return CGFloat.random(in: 0...256)
    }
    //2.RANDOM SIZE
    func randomSize() -> CGFloat{
        return CGFloat(Int.random(in: 4...80))
    }
    //3.RANDOM SCALE
    
    func randomScale() -> CGFloat{
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    //4.RANDOM SPEED
    func randomSpeed() -> Double{
        return Double.random(in: 0.05...1.0)
    }
    //5.RANDOM DELAY
    func randomDelay() -> Double{
        return Double.random(in: 0...2)
    }
    
    
    
    var body: some View {
        ZStack{
            ForEach(0...randomCircle,id:\.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(CGPoint(x: randomCoordinates(), y: randomCoordinates()))
                    .scaleEffect(isAnimated ? randomScale() : 1)
                    .onAppear(perform: {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        ){
                            isAnimated = true
                        }
                    })
            }
        }.frame(width: 256,height: 256)
            .mask(Circle())
            .drawingGroup()
    }
}

#Preview {
    
    ZStack {
        Color.teal.ignoresSafeArea()
        MotionAnimationView()
    }
        
}
