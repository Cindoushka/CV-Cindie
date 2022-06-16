//
//  Dilpomas.swift
//  CurriculumVitae
//
//  Created by apprenant50 on 05/06/2022.
//

import SwiftUI

struct Dilpomas: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 50){
        ForEach(school) { item in
            
            VStack {
            Text(item.diplome)
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(.accentColor)
                .frame(width: 250)
                .multilineTextAlignment(.center)
                
                Image(item.picture)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    .padding()
                
                Text("\(item.lieu) à \(item.city.rawValue)")
                    .font(.system(size: 20))
                    .italic()
                
                Text("en \(item.year)")
                    .fontWeight(.thin)
                    .padding(.bottom,30)
                Text(item.savoir)
                    .frame(width: 310)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
        }
        }
    }
            .padding(.horizontal, 50)
        }
    }
}

struct Dilpomas_Previews: PreviewProvider {
    static var previews: some View {
        Dilpomas()
    }
}
