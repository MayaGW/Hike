//
//  SettingsView.swift
//  Hike
//
//  Created by Maya Ghamloush on 07/02/2024.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    private let alternateAppicons: [String] = ["AppIcon-MagnifyingGlass",
    "AppIcon-Map",
    "AppIcon-Mushroom",
    "AppIcon-Camera",
    "AppIcon-Backpack",
    "AppIcon-Campfire"
  ]
  
    var body: some View {
        
        List{
            //MARK: - SECTION: HEADER
            Section{
                HStack{
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack (spacing: -10){
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editors'Choice")
                            .fontWeight(.medium)
                        
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(LinearGradient(colors: [.colorGreenLight,.colorGreenMedium], startPoint: .top, endPoint: .bottom))
                .padding(.top,8)
                VStack(spacing: 8){
                    Text("Where can you find \nperfect tracks")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots. It's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundColor(.colorGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom,16)
                .frame(maxWidth: .infinity)
                 
                
             
            }//Header
            .listRowSeparator(.hidden)
            //Mark : - Section:  Icons
            
            Section(header: Text("Alternate Icons")){
                ScrollView(.horizontal,showsIndicators: false){
                    HStack (spacing: 12){
                        ForEach(alternateAppicons.indices,id: \.self) { item in
                            Button{
                                print("Icon is \(alternateAppicons[item]) pressed")
                                UIApplication.shared.setAlternateIconName(alternateAppicons[item]) { error in
                                  if error != nil {
                                    print("Failed request to update the app's icon: \(String(describing: error?.localizedDescription))")
                                  } else {
                                    print("Success! You have changed the app's icon to \(alternateAppicons[item])")
                                  }
                                }
                            }
                        label:{
                            Image("\(alternateAppicons[item])-Preview")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(16)
                    }.buttonStyle(.borderless)
                        }
                    }
                }// SCROLL VIEW
                .padding(.top,12)
                
                Text("Choose your favorite app icon from the collection above")
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom,12)
            }.listSectionSeparator(.hidden)
            
            //Mark : - Section:  About
            Section(
                header: Text("About the App"),
                footer: HStack{
                    Spacer()
                    Text("Copyright © All right reserved")
                }
            ){
                // Basic Labeled contenet
//                LabeledContent("Application", value: "Hike")
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTintColor: .blue)
                
                CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                
                CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                
                CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "John Doe", rowTintColor: .mint)
                
                CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintColor: .pink)
 
                CustomListRowView(rowLabel: "Website", rowIcon:  "globe",  rowTintColor: .indigo, rowLinkLabel: "Credo Academy", rowLinkDestination: "https://www.google.com")

            }
        }//List
        
    }
}

#Preview {
    SettingsView()
}
