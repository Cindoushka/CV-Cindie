//
//  Formations.swift
//  CurriculumVitae
//
//  Created by apprenant50 on 04/06/2022.
//

import SwiftUI

struct Formations: View {
    
    @State var selectedButton : Int = 0

    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
        VStack {
            Picker(selection: $selectedButton, label: Text("")) {
                Text("Diplômes").tag(1)
                    
                Text("Formations").tag(2)
                Text("Compétences").tag(3)
            }
            .frame(width: 400, height: 80)
            .font(.title)
            .pickerStyle(.segmented)
            
            switch selectedButton {
            case 1 :
                Dilpomas()
            case 2 :
                Formatss()
            case 3 :
                Competenceees()
            default :
                Text("")


            }
                    
        }
        }
    }
}

struct Formations_Previews: PreviewProvider {
    static var previews: some View {
        Formations()
    }
}
