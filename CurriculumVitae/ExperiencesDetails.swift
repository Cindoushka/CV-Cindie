//
//  ExperiencesDetails.swift
//  CurriculumVitae
//
//  Created by apprenant50 on 05/06/2022.
//

import SwiftUI

struct ExperiencesDetails: View {
    
    var pastwork : PastWork
    
    var body: some View {
        
        VStack {
            
            Text(pastwork.ets.rawValue)
                .foregroundColor(.red)
                .font(.system(size: 20))
                .frame(width:350)
                .shadow(color: .gray, radius: 5)
                .padding()
            
            HStack {
                
                Image(systemName: "mappin.and.ellipse")
                    .foregroundColor(.black)
                Text(pastwork.city.rawValue)
                    .foregroundColor(.black)
                
            }
            
            Image(pastwork.logo)
                .resizable()
                .scaledToFit()
                .frame(width: 250, alignment: .center)
                .cornerRadius(10)
                .shadow(radius: 10)
                .padding()
            
            Text(pastwork.poste)
                .foregroundColor(.accentColor)
                .font(.system(size: 25))
                .fontWeight(.semibold)
                .frame(width:350)
                .multilineTextAlignment(.center)

            
            Text("en \(pastwork.contrat) en \(pastwork.duree)")
                .foregroundColor(.gray)
                .italic()
                .font(.system(size:20))
        
            
            Text(pastwork.competences)
                .foregroundColor(.black)
                .font(.system(size: 17))
                .fontWeight(.thin)
                .frame(width:310)
                .multilineTextAlignment(.center)
                .padding(15)
            
            Spacer()

               
        }
    }
}

struct ExperiencesDetails_Previews: PreviewProvider {
    static var previews: some View {
        ExperiencesDetails(pastwork: experiences[0])
    }
}
