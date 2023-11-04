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
                    Image(systemName: "circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width:25)
                        .foregroundColor(.lightGray)
                Spacer()
                    .frame(width: 15)
                VStack {
                    LazyVStack(alignment:.leading) {
                        Text(toDoName)
                            .foregroundColor(.black)
                            .font(Font.system(size: 16))
                        Spacer()
                            .frame(height: 5)
                        Text(toDoTime)
                            .foregroundColor(.gray)
                            .font(Font.system(size: 14))
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
