//
//  CircleImage.swift
//  TimeConversions
//
//  Created by Caleb Wheeler on 1/5/20.
//  Copyright © 2020 Caleb Wheeler. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    
    
    var body: some View {
        HStack {
            Image("OneLastOne").resizable()
                .frame(width : 80.0, height : 80.0)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth : 4))
                .shadow(radius : 10)
            
            Image("Rem")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth : 4))
                .shadow(radius : 10)
            
            Image("MoreRem")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth : 4))
                .shadow(radius : 10)
            
            Image("Another")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth : 4))
                .shadow(radius : 10)
        }
    }
}
    

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
