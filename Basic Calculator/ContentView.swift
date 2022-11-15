//
//  ContentView.swift
//  Basic Calculator
//
//  Created by Abdullah Bilgin on 11/15/22.
//

import SwiftUI

struct ContentView: View {
    
    @State  var number1 = 0.0
    @State  var number2 = 0.0
    @State  var result = 0.0
    
    var body: some View {

        ZStack {
            //Color.cyan.ignoresSafeArea()
            VStack {
                Spacer()
                VStack{
                    Text("Basic Calculator")
                }
                .padding()
                .font(.title)
                .foregroundColor(.cyan)
                Spacer()
                
                VStack {
                    HStack{
                        VStack(alignment: .center) {
                            Text("Number-1")
                                .font(.callout)
                                .bold()
                            TextField("Enter Number", value: $number1, format: .number)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .multilineTextAlignment(TextAlignment.center)
                                .keyboardType(.numberPad)
                        }.padding()
                        VStack(alignment: .center) {
                            Text("Number-2")
                                .font(.callout)
                                .bold()
                            TextField("Enter Number", value: $number2, format: .number)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .multilineTextAlignment(TextAlignment.center)
                                .keyboardType(.numberPad)
                        }.padding()
                    }
                }
                .padding()
                Spacer()
                VStack {
                    HStack{
                        VStack{
                            Button {
                                result = number1 + number2
                            } label: {
                                Image(systemName: "plus.circle.fill")
                                    .font(.largeTitle)
                                    .foregroundColor(.cyan)
                            }
                            .padding()
                            
                            Button {
                                result = number1 * number2
                            } label: {
                                Image(systemName: "multiply.circle")
                                    .font(.largeTitle)
                                    .foregroundColor(.cyan)
                            }.padding()
                            
                        }
                        
                        VStack{
                            Button {
                                result = number1 - number2
                            } label: {
                                Image(systemName: "minus.circle")
                                    .font(.largeTitle)
                                    .foregroundColor(.cyan)
                            }
                            .padding()
                            
                            Button {
                                result = number1 / number2
                            } label: {
                                Image(systemName: "divide.circle.fill")
                                    .font(.largeTitle)
                                    .foregroundColor(.cyan)
                            }.padding()
                        }
                        
                    }
                    
                }
                .padding()
                Spacer()
                VStack {
                    Text("Result: \(result)")
                }
                .padding()
                Spacer()
                VStack {
                    Button {
                        print("clear tapped!")
                    } label: {
                        Image(systemName: "clear")
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
