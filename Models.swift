//
//  Models.swift
//  CurriculumVitae
//
//  Created by apprenant50 on 04/06/2022.
//

import Foundation


struct MyProfile: Identifiable {
    var id = UUID()
    var myName: String
    var mySurname: String
    var dateOfBirth: String
    var city: String
    var myPhoto: String
    var age: Int
    var searching: String
    var myMemoji: String
}

struct MyContacts: Identifiable {
    var id = UUID()
    var image : String
    var donnee : String
}

enum Entreprises: String {
    case cehdf = "Caisse d'Épargne Hauts de France"
    case maaf = "Maaf"
    case argd = "Argence Développement"
    case orange = "Orange"
    case lycee = "Lycée d'Excellence Edgar Morin"
    case dms = "DMS Prevention"
    case hetm = "H&M"
    case mcdo = "McDondald's"
}

enum CityWork: String {
    case roubaix = "Roubaix"
    case lille = "Lille"
    case arras = "Arras"
    case lamad = "La Madeleine"
    case douai = "Douai"
}

struct PastWork: Identifiable {
    var id = UUID()
    var ets : Entreprises
    var city : CityWork
    var duree : String
    var competences : String
    var logo : String
    var poste: String
    var contrat: String 
}

struct Etudes: Identifiable {
    var id = UUID()
    var lieu : String
    var diplome : String
    var year : String
    var savoir: String
    var city: CityWork
    var picture: String
}

struct Hobbys: Identifiable {
    var id = UUID()
    var imageHob : String
    var nomHobby: String
    var desc: String 
}

struct ProWork: Identifiable {
    var id = UUID()
    var lieu2 : String
    var nomForm : String
    var year : String
    var descri: String
    var logopro: String
    var cityP : CityWork
}

struct Competences : Identifiable {
    var id = UUID()
    var nomComp: String
    var imageComp : String
    var descComp : String
}

struct TabItemData {
    let imageTab: String
    let selectedImage: String
    let titleTab: String 
}
