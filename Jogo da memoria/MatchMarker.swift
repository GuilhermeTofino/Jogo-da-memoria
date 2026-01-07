//
//  MatchMarker.swift
//  Jogo da memoria
//
//  Created by Guilherme Tofino on 07/01/26.
//
import SwiftUI

enum Match {
    case nomatch
    case exact
    case inexact
}

struct MatchMarker :  View {
    var matches: [Match]
    var body: some View {
        HStack{
            VStack{
               matchMarker(peg: 0)
               matchMarker(peg: 1)
            }
            VStack{
                matchMarker(peg: 2)
                matchMarker(peg: 3)
            }
        }
    }
    func matchMarker (peg: Int) -> some View {
        let exactCount: Int = matches.count(where: {match in match == .exact})
        let foundCout: Int = matches.count(where: {match in match != .nomatch})
        return Circle()
            .fill(exactCount > peg ? Color.primary : Color.clear)
            .strokeBorder(foundCout > peg ? Color.primary : Color.clear, lineWidth :2)
            .aspectRatio(1,contentMode: .fit)
    }
}
