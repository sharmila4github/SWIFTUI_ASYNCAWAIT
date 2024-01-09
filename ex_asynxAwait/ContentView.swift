//
//  ContentView.swift
//  ex_asynxAwait
//
//  Created by Raghav Deo on 16/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
            
           

            func addOne(to number: Int) async {
                print("- wating for the return of \(#function)")
                sleep(2)
                number + 1
            }
            
            func addTwo(to number: Int) async -> Int {
                print("- wating for the return of \(#function)")
                sleep(2)
                number + 2
            }
            
            func addThree(to number: Int) async -> Int {
                print("- wating for the return of \(#function)")
                sleep(2)
                number + 3
            }
            
            func addFour(to number: Int) async -> Int {
                print("- wating for the return of \(#function)")
                sleep(2)
                number + 4
            }
            
            func addFive(to number: Int) async -> Int {
                print("- wating for the return of \(#function)")
                sleep(2)
                number + 5
            }

            // ⭐️
            Task.init {
                print("Start with 0")

                let num1 = await addOne(to: 0)
                let num2 = await addTwo(to: num1)
                let num3 = await addThree(to: num2)
                let num4 = await addFour(to: num3)
                let num5 = await addFive(to: num4)

                print("Now, the number is \(num5)")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
