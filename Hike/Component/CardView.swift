//
//  CardView.swift
//  Hike
//
//  Created by Maya Ghamloush on 04/02/2024.
//

import SwiftUI

struct CardView: View {
    //MARK: -PROPERTIES
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    // MARK: - FUNCTIONS
    
    func randomImage(){
        print("BUTTON WAS PRESSED")
        print("status : Old image number = \(imageNumber)")
        repeat{
            randomNumber = Int.random(in: 1...5)
            print("Action: RAndom number generated\(randomNumber)")
        }while randomNumber == imageNumber
        
        
       
        imageNumber = randomNumber
        print(" Result new image numer = \(imageNumber)")
    }
    
    var body: some View {
        
 
        
        
        ZStack {
            CustomBackgroundView()
            
            VStack {
                //MARK: - HEADER
                VStack (alignment: .leading){
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                colors: [.colorGrayLight,
                                         .colorGrayMedium],
                                startPoint: .top,
                            endPoint: .bottom))
                        Spacer()
                        Button{
                            // ACTION : show a sheet
                            print("the button was pressed")
                        }
                               label: {
                          CustomButtonView()
                        }
                    
                    }
                    
                    
                    Text("fun and enjoyable outdoor activity for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.colorGrayMedium)
                       
                }//HEADER
                .padding(.horizontal,30)
                
                //MARK: - MAIN CONTENT
                ZStack {
                    
          CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                // MARK: - FOOTER
                Button{
                    //ACtion generate number random
                    print("The button was presed")
                    randomImage()
                }
                       label: {
                    Text("Explore more")
                               .font(.title2)
                               .fontWeight(.heavy)
                               .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .colorGreenLight,
                                        .colorGreenMedium],
                                    startPoint: .top,
                                    endPoint: .center))
                               .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                       }
                       .buttonStyle(GradientButton())
                
                
            }// VSTACK
            
        }//: CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
