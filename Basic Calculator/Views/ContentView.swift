//
//  ContentView.swift
//  Basic Calculator
//
//  Created by Abdullah Bilgin on 11/15/22.
//

import SwiftUI

struct ContentView: View {
    
    // Set variables
    
    @State  var number1 = 0.0
    @State  var number2 = 0.0
    @State  var result = 0.0
    
    // Hide keyboard variable
    @FocusState private var textFieldIsFocused: Bool
        
   
    
    var body: some View {

        // 1: Adding the outer ZStack
        ZStack {
            //Adding the mainColor to ZStack
            AppColor.mainColor.ignoresSafeArea()
            
            // 1.1: Adding a VStack
            VStack {
                Spacer()
                
                // 1.1.1: Adding a VStack for title Section
                VStack{
                    //Adding Text Views
                    Text("Basic Calculator")
                }
                .padding()
                .font(.largeTitle)
                .foregroundColor(AppColor.accentColor)
                Spacer()
                
                // 1.1.2: Adding a VStack for text Field Section
                VStack {
                    HStack{
                        VStack(alignment: .center) {
                            TextField("Enter Number", value: $number1, format: .number)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .multilineTextAlignment(TextAlignment.center)
                                .keyboardType(.numberPad)
                                .focused($textFieldIsFocused) // check textfield is focused
                        }.padding()
                        VStack(alignment: .center) {

                            TextField("Enter Number", value: $number2, format: .number)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .multilineTextAlignment(TextAlignment.center)
                                .keyboardType(.numberPad)
                                .focused($textFieldIsFocused) // check textfield is focused
                        }.padding()
                    }
                }
                .padding()
                Spacer()
                
                // 1.1.3: Adding a VStack for Result Section
                VStack {
                    Text("Result: \(result)")
                }
                .font(.title)
                .padding()
                .foregroundColor(AppColor.accentColor)
                Spacer()
                
                // 1.1.4: Adding a VStack for Buttons Section
                VStack {
                    HStack{
                        // 1.1.4.1: Adding the Buttons
                        VStack{
                                Button {
                                    result = number1 + number2
                                    textFieldIsFocused = false // when click the button set "textFieldIsFocused" to false for Dismissing keyboard.
                                } label: {
                                    Image(systemName: "plus.circle.fill")
                                        .font(.system(size: 75))
                                        .foregroundColor(AppColor.accentColor)
                                }
                                .padding()
                                
                                Button {
                                    result = number1 * number2
                                    textFieldIsFocused = false // when click the button set "textFieldIsFocused" to false for Dismissing keyboard.
                                } label: {
                                    Image(systemName: "multiply.circle")
                                        .font(.system(size: 75))
                                        .foregroundColor(AppColor.accentColor)
                                }.padding()
                                
                            }
                        // 1.1.4.2: Adding the Buttons
                        VStack{
                            Button {
                                result = number1 - number2
                                textFieldIsFocused = false //
                            } label: {
                                Image(systemName: "minus.circle")
                                    .font(.system(size: 75))
                                    .foregroundColor(AppColor.accentColor)
                            }
                            .padding()
                            
                            Button {
                                result = number1 / number2
                                textFieldIsFocused = false // 
                            } label: {
                                Image(systemName: "divide.circle.fill")
                                    .font(.system(size: 75))
                                    .foregroundColor(AppColor.accentColor)
                            }.padding()
                        }
                        
                    }
                    
                }
                .padding()
                Spacer()
                
               
                
                // 1.1.5: Adding a VStack for Clear Button Section
                VStack {
                    Button {
                        print("clear tapped!")
                    } label: {
                        Image(systemName: "clear")
                            .foregroundColor(AppColor.accentColor)
                            .font(.system(size: 50))
                    }
                    .padding()
                    .font(.largeTitle)
                }
                .padding()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
