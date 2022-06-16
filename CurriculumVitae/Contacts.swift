//
//  Contacts.swift
//  CurriculumVitae
//
//  Created by apprenant50 on 04/06/2022.
//

import SwiftUI

struct Contacts: View {
    
  
    var body: some View {
        
        VStack {
            
            HStack {
                Image(moiMeme.myPhoto)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .padding(5)
                    .background(Color.accentColor)
                    .clipShape(Circle())            .shadow(radius: 10)
                
                Text("Contactez-moi...")
                    .foregroundColor(.accentColor)
                    .font(.system(size: 35))
                    .italic()
                
            }
            
            List(mesInfos){ item in
                HStack {
                    Image(systemName: item.image)
                        .font(.system(size:30))
                        .foregroundColor(.accentColor)
                Text(item.donnee)
                        .fontWeight(.thin)
                        .frame(width:220)
                }
                .padding()
            }
        }
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        Contacts()
    }
}
