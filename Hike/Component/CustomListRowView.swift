//
//  CustomListRowView.swift
//  Hike
//
//  Created by Maya Ghamloush on 07/02/2024.
//

import SwiftUI

struct CustomListRowView: View {
    //MARK: - properties
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String?
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    
    
    var body: some View {
        
        
        
        
        LabeledContent{
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(.primary)
                .fontWeight(.heavy)}
                else if (rowLabel != nil && rowLinkDestination != nil){
                    Link(rowLinkLabel!,destination: URL(string: rowLinkDestination!)!)
                        .foregroundColor(.pink)
                        .fontWeight(.heavy)
                }
              else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        }label: {
            
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    
                
                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List {
        CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Maya", rowTintColor: .pink)
    }
}
