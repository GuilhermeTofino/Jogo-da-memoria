//
//  ContentView.swift
//  Jogo da memoria
//
//  Created by Guilherme Tofino on 04/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            pegs(colors: [.red,.green,.yellow,.blue])
            pegs(colors: [.blue,.yellow,.red,.green])
            pegs(colors: [.green,.red,.blue,.yellow])
            pegs(colors: [.yellow,.blue,.green,.red])
        }.padding()
    }
    
    func pegs(colors: Array<Color>) -> some View {
        HStack{
            ForEach(colors.indices, id: \.self) { index in
                RoundedRectangle(cornerRadius: 10)
                    .aspectRatio(1,contentMode: .fit)
                    .foregroundStyle(colors[index])
            }
            MatchMarker(matches: [.exact, .inexact, .nomatch, .inexact])
        }
    }
}



#Preview {
    ContentView()
}
	
