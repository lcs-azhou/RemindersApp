//
//  ToDoListView.swift
//  RemindersApp
//
//  Created by Ansheng Zhou on 2023-11-04.
//

import SwiftUI

struct ToDoListView: View {
    var toDoName: String
    var toDoTime: String
    
    var body: some View {
        ZStack {
            HStack {
                LazyHStack(alignment:.top) {
                    Image(systemName: "circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width:30)
                        .foregroundColor(.lightGray)
                }
                Spacer()
                    .frame(width: 15)
                VStack {
                    LazyVStack(alignment:.leading) {
                        Text(toDoName)
                            .foregroundColor(.black)
                            .font(Font.system(size: 18))
                        Text(toDoTime)
                            .foregroundColor(.gray)
                    }
                    
                }
            }
            .frame(height: 57)
            .padding(.horizontal)
        }
    }
}

#Preview {
    ToDoListView(toDoName: "Call auto body shop",
                 toDoTime: "2023-11-16")
}
