//
//  over.swift
//  Bonus
//
//  Created by Bubbly Boey on 27/04/21.
//

import SwiftUI

struct over: View {
    
    var body: some View {
        ZStack{
            Image("background")
            Image("pic5")
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack{
            Text("GAME IS OVER")
                .padding()
                .background(Color.white
                                .rotationEffect(/*@START_MENU_TOKEN@*/.zero/*@END_MENU_TOKEN@*/))
                .font(.largeTitle)
                
                .cornerRadius(40)
                HStack{
                    Text("better luck next time")
                    Image(systemName: "emoji.sad")
                    
                }
            }
            
        }
    }
}


struct over_Previews: PreviewProvider {
    static var previews: some View {
        over()
    }
}
