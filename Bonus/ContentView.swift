//
//  ContentView.swift
//  Bonus
//
//  Created by Bubbly Boey on 27/04/21.
//

import SwiftUI


struct ContentView: View {

    @State var cred = 0
    @State var pic = "pic"
    @State var pict = "pic"
    @State var pics = "pic"
    @State var mishits = 0
    
    @State var rand = 0
    
    var body: some View {
        ZStack{
             Image("background")
            
            VStack{
                Spacer()
                Text("SwiftUI  Slots!!")
                    .font(.largeTitle)
                Spacer()
                    HStack{
                    Text ("  Credits: ")
                    Text(String(cred))
                    }
                    HStack{
                    Text("Mis-Hits:")
                    Text(String(mishits))
                    
                    }
                Spacer()
                HStack{
                    Spacer()
                    Image(pic)
    
                    Image(pict)
                    
                    Image(pics)
                    Spacer()
                }
                Spacer()
                Button(action: {
//                    generate random number
                    let picRand = Int.random(in:1...3 )
                    let pictRand = Int.random(in:1...3 )
                    let picsRand = Int.random(in:1...3 )
//                    update the pics
                    pic = "pic" + String(picRand)
                    pict = "pic" + String(pictRand)
                    pics = "pic" + String(picsRand)
//                      update the credits
                    
                    if picRand == pictRand && pictRand == picsRand
                    {
                        cred += 1
                        
                    }
                
                     else  {
                        mishits += 1
                        print("whoops!!, didnt match")
                     }
                    
                    
                    }, label: {
                                Text("Spin")
                                    .padding()
                                    .background(Color.black)
                                    .foregroundColor(Color.white)
                                    .cornerRadius(40)
                                    .padding()
                        
                    })
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
