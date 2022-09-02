//
//  SecondView.swift
//  final_project
//
//  Created by Zeinab H Eldeeb on 01/09/2022.
//

import SwiftUI

struct SecondView: View {
    @State var reminders = ""
    @State var newReminders = ""
    @State var Name = ""
    @State var number1 = ""
    @State var number2 = ""
    @State var number3 = ""
    @State var time = ""
    @State var dayNight = ""
    @State var selection1: String = ""
    @State var selection2: String = ""
    @State var selection3: String = ""
    @State var Time: String = ""
    @Binding var maReminders: [MRModel]
    var body: some View {
        ZStack {
            Color.gray.opacity(0.3)
                .ignoresSafeArea()
            VStack{
                HStack {
                    Text("Add Reminder")
                        .font(.system(size: 50))
                }.padding()
                Spacer()
                inputview(titel: "Pill Name", inPut: Name)
                
              inputview(titel: "Amount", inPut: number1)
                
                    inputview(titel: "how long", inPut: number2)
                inputview(titel: "How many times", inPut: number3)
                VStack {
                    HStack{
                        Text("Breakfast:")
                            .font(.title2)
                        Text(selection1)
                            .font(.title2)
                        Picker(
                            selection: $selection1,
                            label: Text("picker") ,
                            content: {
                                Text("befor").tag("befor")
                                Text("during").tag("during")
                                Text("after").tag("after")

                            })
                    }.padding()
                    HStack{
                        Text("Lunch:")
                            .font(.title2)
                        Text(selection2)
                            .font(.title2)
                        Picker(
                            selection: $selection2,
                            label: Text("picker") ,
                            content: {
                                Text("befor").tag("befor")
                                Text("during").tag("during")
                                Text("after").tag("after")

                            })
                    }.padding()
                    HStack{
                        Text("Dinner:")
                            .font(.title2)
                        Text(selection3)
                            .font(.title2)
                        Picker(
                            selection: $selection3,
                            label: Text("picker") ,
                            content: {
                                Text("befor").tag("befor")
                                Text("during").tag("during")
                                Text("after").tag("after")

                            })
                    }.padding()
                }
                inputview(titel: "Notification", inPut: Time)
                HStack{
                    Text("Day/Night:")
                        .font(.title2)
                    Text(dayNight)
                        .font(.title2)
                    Picker(
                        selection: $dayNight,
                        label: Text("picker") ,
                        content: {
                            Text("PM").tag("PM")
                            Text("AM").tag("AM")
                        })
                }.padding()
                Button {
                    maReminders.append(MRModel(pillName: Name, amount: Double(number1) ?? 0.0, howLong: Int(number2) ?? 0, times: Int(number3) ?? 0, breakfast: selection1, lunch: selection2, dinner: selection3, notification: Time, dayNight: dayNight))
                } label: {
                    Text("Save")
                        .font(.title)
                }

            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(maReminders: .constant([MRModel(pillName: "zocor", amount: 1.5, howLong: 30, times: 3, breakfast: "after", lunch: "during", dinner: "befor", notification: "1:30", dayNight: "pm")]))
    }
}


