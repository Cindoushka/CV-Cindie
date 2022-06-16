//
//  Profile.swift
//  CurriculumVitae
//
//  Created by apprenant50 on 04/06/2022.
//

import SwiftUI

struct Profile: View {
    
    @State private var moving = false
//    @State var scale : CGFloat = 1


    var body: some View {
        
        ZStack{
//            Rectangle()
//                .fill(
//                    LinearGradient(colors: [.white, .white, Color("lightpink"), .white, .white], startPoint: .topLeading, endPoint: .bottomTrailing))
            BubbleTest()
        VStack {
            Spacer()
            HStack{
                
            Text(moiMeme.myName)
                .foregroundColor(.black)
                .fontWeight(.thin)
                .font(.largeTitle)
                Text(moiMeme.mySurname)
                    .foregroundColor(.black)
                    .fontWeight(.thin)
                    .font(.largeTitle)
        }
            
            Text(moiMeme.searching)
                .font(.callout)
                .fontWeight(.thin)
                .italic()
                .padding(8)
                .background(Color.accentColor)
                .cornerRadius(10)
                .shadow(radius: 5)
                
            Spacer()
            ZStack {
            Image(moiMeme.myPhoto)
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 350)
                .clipShape(Circle())
                .padding(10)
                .background(Color.accentColor)
                .clipShape(Circle())
                .shadow(radius: 20)
//                .offset(y: moving ? 60 : -50)
//                .animation(.interpolatingSpring(stiffness: 100, damping: 7).repeatForever(autoreverses: true).delay(0.1), value: moving)
                
            }
            .onAppear{
                moving.toggle()
            }
//            Spacer()
            HStack {
                
                VStack{
            Text(moiMeme.city)
                .foregroundColor(.accentColor)
                .font(.system(size: 30))
                .fontWeight(.heavy)
            
            Text("\(moiMeme.age) ans")
                .foregroundColor(.accentColor)
                .font(.system(size:20))
            
            Text(moiMeme.dateOfBirth)
                .fontWeight(.thin)
                
//            Spacer()
        }
                .padding(.leading)
                    Image(moiMeme.myMemoji)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
            }
            Spacer()
        }
        }

    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
