//
//  Hobbies.swift
//  CurriculumVitae
//
//  Created by apprenant50 on 04/06/2022.
//

import SwiftUI

struct Hobbies: View {
    var body: some View {
        
       
        ZStack{
            Rectangle()
                .fill(
                    LinearGradient(colors: [.accentColor, .white, .white, .white, .white, .accentColor], startPoint: .topLeading, endPoint: .bottomTrailing))
                .ignoresSafeArea()
//            HStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                ForEach(mesPassions) { item in
                   
                    VStack {
                    Image(item.imageHob)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 350, height: 300)
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        .padding()
                        
                    
                    Text(item.nomHobby)
                        .foregroundColor(.accentColor)
                        .font(.title)
                        .padding()
                    Text(item.desc)
                        .fontWeight(.thin)
                        .frame(width:330)
                        .multilineTextAlignment(.center)
                        }
                }
            }
                    .padding(.horizontal,10)
        }
        }
    }
}

struct Hobbies_Previews: PreviewProvider {
    static var previews: some View {
        Hobbies()
    }
}
