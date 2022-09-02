//
//  inputview.swift
//  final_project
//
//  Created by Zeinab H Eldeeb on 02/09/2022.
//

import SwiftUI

struct inputview: View {
    @State var titel: String
    @State var inPut: String
    var body: some View {
        HStack{
            Text("\(titel):")
                .font(.title2)
            TextField("\(titel)", text: $inPut)
                .textFieldStyle(.roundedBorder)
                .frame(width: 250, height: 25)
                .background(.white)
        }.padding()
    }
}

struct inputview_Previews: PreviewProvider {
    static var previews: some View {
        inputview(titel: "name", inPut: "")
    }
}
