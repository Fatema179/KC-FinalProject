//
//  ContentView.swift
//  final_project
//
//  Created by Zeinab H Eldeeb on 28/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var reminders = ""
    @State var newReminders = ""
    @State var myReminder = ""
    @State var ourReminders = ""
    @State var myReminders: [MRModel] = []
    var body: some View {
        NavigationView{
            ZStack {
                Color.gray.opacity(0.3)
                    .ignoresSafeArea()
                VStack {
                    HStack{
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        Spacer()
                        NavigationLink {
                            SecondView(maReminders: $myReminders)
                        } label: {
                            Image(systemName: "plus")
                                .frame(width: 50, height:50 )
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(50)
                        
                        }
                    }.padding()
                    List(myReminders){ myReminder in
                        HStack{
                            Text("\(myReminder.pillName), \(myReminder.notification), \(myReminder.amount)")
                            
                        }.padding()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
