//
//  ZeroTwo.swift
//  TimeConversions
//
//  Created by Caleb Wheeler on 1/7/20.
//  Copyright © 2020 Caleb Wheeler. All rights reserved.
//

import SwiftUI

struct ZeroTwo: View {
    var body: some View {
        HStack {
            Image("Chan").resizable()
            .frame(width : 80.0, height : 80.0)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth : 4))
                .shadow(radius : 10)
            
            Image("HatChan")
            .frame(width : 80.0, height : 80.0)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth : 4))
                .shadow(radius : 10)
            
            Image("ZeroChan")
            .frame(width : 80.0, height : 80.0)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth : 4))
                .shadow(radius : 10)
            
            Image("ZeroTwo")
            .frame(width : 80.0, height : 80.0)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth : 4))
                .shadow(radius : 10)
            
        }
    }
}

struct ZeroTwo_Previews: PreviewProvider {
    static var previews: some View {
        ZeroTwo()
    }
}
