//
//  ContentView.swift
//  RemindersApp
//
//  Created by Ansheng Zhou on 2023-11-04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //            First layer(background)

                        
            //            Second layer(rest of interface)
            VStack {
                Spacer()
                List {
                    Group {
                        Text("To Do")
                            .font(.system(.largeTitle, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                        ToDoListView(toDoName: "Call auto body shop",
                                     toDoTime: "2023-11-16")
                        ToDoListView(toDoName: "Feed Piper",
                                     toDoTime: "Tomorrow, 8:00 AM, Daily")
                        ToDoListView(toDoName: "Write lesson about interactive apps",
                                     toDoTime: "Tomorrow, 6:00 PM")
                        ToDoListView(toDoName: "Take piper to the vet",
                                     toDoTime: "2023-11-29, 3:00 PM")
                        ToDoListView(toDoName: "Drop off donation at Goodwill",
                                     toDoTime: "2023-11-11")
                        ToDoListView(toDoName: "Call plumber about clog in sink",
                                     toDoTime: "Tomorrow, 2:00 PM")
                        ToDoListView(toDoName: "Call dentist to schedule appointment",
                                     toDoTime: "2023-11-06, 4:00 PM")
                        ToDoListView(toDoName: "Call mechanic to get TARDIS repaired",
                                     toDoTime: "Tomorrow, 12:00 PM")
                    }
                }.listStyle(.grouped)
                
            }
            
        }
//        .padding()
    }
}

#Preview {
    ContentView()
}
