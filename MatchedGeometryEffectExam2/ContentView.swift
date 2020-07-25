//
//  ContentView.swift
//  MatchedGeometryEffectExam2
//
//  Created by Erdi Ergene on 18.07.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var flag: Bool = true
    @Namespace var nspace

    var body: some View {
        HStack {
            if flag {
                Rectangle().fill(Color.green)
                    .matchedGeometryEffect(id: "geoeffect1", in: nspace)
                    .frame(width: 100, height: 100)
            }
            
            Spacer()
            
            Button("Switch") {
                withAnimation(.easeInOut(duration: 2.0)) { flag.toggle() }
            }
            
            Spacer()
            
            if !flag {
                Circle().fill(Color.blue)
                    .matchedGeometryEffect(id: "geoeffect1", in: nspace)
                    .frame(width: 50, height: 50)
            }
        } .frame(width: 250).padding(10).border(Color.gray, width: 3)
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
