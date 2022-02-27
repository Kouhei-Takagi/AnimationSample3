//
//  ContentView.swift
//  AnimationSample3
//
//  Created by 高木耕平 on 2022/02/27.
//

import SwiftUI

struct ContentView: View {
    @State private var isRotatedSq = false

    
    
    var body: some View {
        VStack{
        Button("Start", action:{
            self.isRotatedSq.toggle()
        })
            ZStack{
                Circle()
                    .frame(width:200, height:200)
                    .foregroundColor(.yellow)
                HStack{
                    ZStack{
                        Circle()
                            .frame(width:60, height:60)
                            .foregroundColor(.white)
                        Circle()
                            .frame(width:10, height:10)
                            .foregroundColor(.black)
                            .offset(x:20)
                    }
                    ZStack{
                        Circle()
                            .frame(width:60, height:60)
                            .foregroundColor(.white)
                        Circle()
                            .frame(width:10, height:10)
                            .foregroundColor(.black)
                            .offset(x:-20)
                    }
                }.offset(y:-50)
                Rectangle()
                    .frame(width:130, height:10)
                    .foregroundColor(.black)
                    .offset(y:50)
            }.frame(width: 250.0, height: 250.0)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
