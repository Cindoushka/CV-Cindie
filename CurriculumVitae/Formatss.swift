//
//  Formatss.swift
//  CurriculumVitae
//
//  Created by apprenant50 on 05/06/2022.
//

import SwiftUI

struct Formatss: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 50){
        ForEach(formatn) { item in
            
            VStack {
            Text(item.nomForm)
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(.accentColor)
                .frame(width: 250)
                .multilineTextAlignment(.center)
                
                Image(item.logopro)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    .padding()
                
                Text("\(item.lieu2) à \(item.cityP.rawValue)")
                    .font(.system(size: 20))
                    .italic()
                
                Text("en \(item.year)")
                    .fontWeight(.thin)
                    .padding(.bottom,15)
                Text(item.descri)
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

struct Formatss_Previews: PreviewProvider {
    static var previews: some View {
        Formatss()
    }
}
