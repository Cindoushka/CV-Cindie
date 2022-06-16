//
//  Experiences.swift
//  CurriculumVitae
//
//  Created by apprenant50 on 04/06/2022.
//

import SwiftUI

struct Experiences: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    var body: some View {
        
        NavigationView {
        VStack{
        ScrollView(.vertical, showsIndicators: false) {
       
            LazyVGrid(columns: columns, alignment: .center, spacing: 20) {
                
        ForEach(experiences) {item in

         
            NavigationLink(destination: {
               ExperiencesDetails(pastwork: item)
            }, label: {
            VStack {
                Image(item.logo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, alignment: .center)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .padding(.leading)
                
                Text(item.ets.rawValue)
                    .foregroundColor(.accentColor)
                    .fontWeight(.semibold)
                    .font(.system(size: 20))
                    .multilineTextAlignment(.center)
                    .frame(width: 175)
                
                Text(item.poste)
                    
                    .italic()
                    .foregroundColor(.gray)
                    .font(.system(size: 15))
                    .frame(width: 170)
                    .multilineTextAlignment(.center)
            }
            
            
            })
//                Divider().frame(maxWidth: 350).padding()
            }
        }
            
        }
            
        }
            
        .navigationTitle("")
        .toolbar {
            VStack {
                Spacer()
                Text("Mes Expériences Professionnelles")
                    .font(.system(size: 23))
                    .foregroundColor(.blue)
                    .padding(.vertical)
                    .multilineTextAlignment(.leading)
                Divider()

            }
            
    }
            
    
}
        .foregroundColor(.blue)
        
}
}
struct Experiences_Previews: PreviewProvider {
    static var previews: some View {
        Experiences()
    }
}
