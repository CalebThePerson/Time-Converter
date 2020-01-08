//
//  ContentView.swift
//  TimeConversions
//
//  Created by Caleb Wheeler on 1/5/20.
//  Copyright © 2020 Caleb Wheeler. All rights reserved.
//  Command + R = Simulator
//  Commadn + OPtions + P -----> Resumes this

//  Check List : Time Conversions
//  Make it where i can add multiple conversion things isnide the app and other stuff instaad of only this  THIS IS A BIG UPDATE


// DONE
//  Must have Seconds, Minutes, Hours, Days
//  First : A Segmented bar at the top saying asking what is the current form of the thing
//  Second : Another askign what you want to convert it into
//  Third : A field where it produces the answer
//  Make it to where , i can change the pictures with a tap of a button


import SwiftUI


struct ContentView: View {
    
    @State private var UserInput = 2
    @State private var UserTimeInput = ""
    @State private var UserOutput = 2
    //@State private var UserOutputChoices = ["Seconds","Minutes","Hours","Days"]
    @State private var Conversions = ["Seconds","Minutes","Hours","Days"]
    
    //Math Time
    
    var MathTime : Double {
        let ActualInput = Double(UserInput + 2)
        let TheNum = UserOutput
        let OtherNum = UserInput
        let ActualOutput = Double(Conversions[TheNum])
        
        var ActualTime = Double(UserTimeInput) ?? 0
        
        //This Converts the ActualTime down to seconds depending on what the user said their time unit is
        if OtherNum == 1 {
            ActualTime = ActualTime * 60
        } else if OtherNum == 2 {
            ActualTime = ActualTime * 3600
        } else if OtherNum == 3 {
            ActualTime = ActualTime * 86400
        }
        
        //This multiples the ActualTime by the appropriate number to get the time into the format the user wants
        if TheNum == 0 {
            ActualTime = ActualTime * 1
        } else if TheNum == 1 {
            ActualTime = ActualTime / 60
        } else if TheNum == 2 {
            ActualTime = ActualTime / 3600
        } else if TheNum == 3 {
            ActualTime = ActualTime / 86400
        }
        
        return ActualTime
        
    }
    
// Anime Pictures
    @State private var AnimeInput = 1
    
    var AnimeChoices = ["Rem","Zero Two","Chika"]
    
    var PictureChange: String {
        
        let Numbers = Double(AnimeInput)
        let AnimeOutput = AnimeChoices[AnimeInput]
        
        return AnimeOutput
    }
    
    
    var body: some View {
        NavigationView {
            Form {
                Section (header : Text("What is the current form of time in ")) {
                    Picker("What is the current time's form/unit :?", selection : $UserInput) {
                        ForEach(0 ..< Conversions.count) {
                            Text("\(self.Conversions[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    TextField("Enter the Amount Here" , text : $UserTimeInput).keyboardType(.decimalPad)
                }
                Section (header : Text("Wht would you like the results in :?")) {
                    Picker("What would you like the results:?", selection : $UserOutput) {
                        ForEach(0 ..< Conversions.count) {
                            Text("\(self.Conversions[$0])")
                        }
                    }
                .pickerStyle(SegmentedPickerStyle())
                }
                
                Section (header : Text("Here is the results")) {
                    Text("\(MathTime, specifier : "%.2f" )")
                    
                }
                
                Section {
                    Picker("",selection : $AnimeInput) {
                        ForEach(0 ..< AnimeChoices.count) {
                            Text("\(self.AnimeChoices[$0])")
                        }
                    }
                .pickerStyle(SegmentedPickerStyle())
                }
                if PictureChange == AnimeChoices[0] {
                    CircleImage()
                } else if PictureChange == AnimeChoices[1] {
                    ZeroTwo()
                } else if PictureChange == AnimeChoices[2] {
                    Chika()
                }
                
                    
            }
            .navigationBarTitle("Rem-Sama")
            

                
            }
        }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
