//
//  Chika.swift
//  TimeConversions
//
//  Created by Caleb Wheeler on 1/7/20.
//  Copyright © 2020 Caleb Wheeler. All rights reserved.
//

import SwiftUI

struct Chika: View {
    var body: some View {
        HStack {
            Image("Suprised").resizable()
            .frame(width : 80.0, height : 80.0)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth : 4))
                .shadow(radius : 10)
            
            Image("Fujiwara")
            .frame(width : 80.0, height : 80.0)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth : 4))
                .shadow(radius : 10)
            
            Image("SmoothJazz")
            .frame(width : 80.0, height : 80.0)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth : 4))
                .shadow(radius : 10)
            
            Image("FanArt")
            .frame(width : 80.0, height : 80.0)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth : 4))
                .shadow(radius : 10)
        }
        
    }
}

struct Chika_Previews: PreviewProvider {
    static var previews: some View {
        Chika()
    }
}
