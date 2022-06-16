//
//  Database.swift
//  CurriculumVitae
//
//  Created by apprenant50 on 04/06/2022.
//

import Foundation

var moiMeme : MyProfile = MyProfile(myName: "Cindy", mySurname: "Bajoni", dateOfBirth: "25 Mars 1992", city: "Roubaix", myPhoto: "cindie", age: 30, searching: "Développeuse d'application iOS", myMemoji: "memojipng")

var mesInfos : [MyContacts] = [MyContacts(image: "iphone", donnee: "07.86.30.58.99"),
                               MyContacts(image: "envelope.badge", donnee: "cindie-baj@live.fr"),
                               MyContacts(image: "globe", donnee: "https://cindiebphotography.wixsite.com/book"),
                               MyContacts(image: "bag.fill", donnee: "https://www.linkedin.com/in/cindy-bajoni-052343146"),
                               MyContacts(image: "house.fill", donnee: "76 rue de la vigne, 1 cour Damerval 59100 Roubaix")]

var mesPassions : [Hobbys] = [Hobbys(imageHob: "photo", nomHobby: "Photographie", desc: "Passionnée de photographie, je pratique occasionnellement. J'aime particulièrement photographier des paysages, mais je fais également des portraits et photos d'évènements. Retrouvez mon site web dans l'onglet contacts."),
                              Hobbys(imageHob: "book", nomHobby: "Lecture", desc: "Je lis énormèment, particulièrement les sagas, les romans dystopiques et les thrillers."),
                              Hobbys(imageHob: "trip", nomHobby: "Voyager", desc: "J'aime découvrir de nouveaux pays, de nouvelles cultures et de nouveaux paysages. J'ai pour le moment voyager en France, en Italie, en Belgique, aux Pays-Bas, en Angleterre, en Espagne, en Allemagne, en Croatie, à Malte, au Maroc et ai beaucoup d'autres destinations en tête. "),
                              Hobbys(imageHob: "animaux", nomHobby: "Animaux", desc: "J'adore les animaux et essaie de défendre la cause animale. J'ai deux chats nommés Jedusor et Scorpius"),
                              Hobbys(imageHob: "hp", nomHobby: "Harry Potter", desc: "Je suis une grande fan de l'univers de Harry Potter, une vraie Potterhead. J'ai lu les livres et vu les films une bonne vingtaine de fois chacun minimum...")
]

var experiences: [PastWork] = [PastWork(ets: .cehdf, city: .roubaix, duree: "2020-2021", competences: "Accueil client, gestion du porte-feuille client, vente de produits d'assurances et prévoyances, de crédits à la consommation et immobilier, gestion et vente d'assurances vies.", logo: "cehdf", poste: "Conseillère de Clientèle", contrat: "CDI"),
                               PastWork(ets: .maaf, city: .lamad, duree: "2019-2020", competences: "Réception d'appels entrants de clients et prospects, gestion et vente de produits d'assurance et de prévoyance, proposition d'assurances vies et prise de rendez-vous.", logo: "maaf", poste: "Conseillère en Développement Commercial", contrat: "CDI"),
                               PastWork(ets: .argd, city: .roubaix, duree: "2018-2019", competences: "Appels entrants et sortant dans la gestion et vente de crédits renouvelables et crédit amortissables à la consommation", logo: "cacf", poste: "Conseillère Clientèle", contrat: "Intérimaire"),
                               PastWork(ets: .cehdf, city: .douai, duree: "2017-2018", competences: "Appels entrants et sortants des clients des différentes agences des Hauts-de-France, rebonds commerciaux sur les produits bancaires et d'assurances.", logo: "cehdf", poste: "Conseillère Clientèle Multimédia", contrat: "CDD"),
                               PastWork(ets: .orange, city: .arras, duree: "2016-2017", competences: "Accueil des clients, ventes de forfaits mobile et internet, vente de téléphones mobiles et fixes.", logo: "orange", poste: "Conseillère Commerciale", contrat: "Intérimaire"),
                               PastWork(ets: .orange, city: .lille, duree: "2014-2016", competences: "Accueil des clients, prise en charge des demandes techniques (paramètrages, réparation et maintenance de téléphones mobiles, ordinateurs portables et box internet). Rebonds commerciaux.", logo: "orange", poste: "Conseillère Technique", contrat: "Alternance"),
                               PastWork(ets: .hetm, city: .lille, duree: "2014", competences: "Mise en rayon, étiquetage et rangement des vêtements, encaissement.", logo: "HM", poste: "Vendeuse", contrat: "CDD"),
                               PastWork(ets: .dms, city: .lille, duree: "2014", competences: "Vente à domicile d'alarmes.", logo: "alarm", poste: "Vendeuse à Domicile Indépendante", contrat: "VDI"),
                               PastWork(ets: .mcdo, city: .douai, duree: "2014", competences: "Barista au McCafé, préparation de boissons type macchiato, cappuccino, mais aussi Smoothies, cuisson de viennoiseries, mise en rayon, nettoyage et respect des règles d'hygiène.", logo: "mcdo", poste: "Barista", contrat: "CDI en période d'essai"),
                               PastWork(ets: .lycee, city: .douai, duree: "2012-2013", competences: "Accompagnement des élèves de 12 à 18 ans au quotidien, du petit déjeuner au coucher. Surveillance des heures de permanence et des récréations. Aide aux devoirs. Organisation et encadrement d'activités telles que des sorties au cinéma, des soirées à thèmes et d'un club cinéma les mercredis soirs.", logo: "lycee", poste: "Assistante d'Éducation", contrat: "Service Civique")]


var school : [Etudes] = [Etudes(lieu: "Lycée Gaston Berger", diplome: "BTS NRC", year: "2016", savoir: "Apprentissage des techniques de ventes et de négociations. Apprentissage de méthodes pour mettre en place de bonnes relations clients.", city: .lille, picture: "gaston"),
                         Etudes(lieu: "Lycée Gaston Berger", diplome: "TOEIC", year: "2016", savoir: "J'ai obtenu le TOEIC avec un score de 880.", city: .lille, picture: "toeic"),
                         Etudes(lieu: "Lycée Albert Châtelet", diplome: "Baccalauréat S Spécialité Mathématiques", year: "2010", savoir: "Bac S Spé maths, énormément de mathématiques durant les deux dernières années de baccalauréat.", city: .douai, picture: "gaston")]

var formatn : [ProWork] = [ProWork(lieu2: "Simplon.co", nomForm: "Extended Apple Foundation Program", year: "2022", descri: "Formation en cours...", logopro: "simplon", cityP: .lille),
                           ProWork(lieu2: "Simplon.co", nomForm: "Apple Foundation Program", year: "2022", descri: "Conception d'un prototype d'application iOS en travail de groupe. On a tout d'abord choisit un thème, puis nous en avons dégagé une problèmatique à laquelle devait répondre notre projet. Nous avons ensuite mis en place une maquette. Après avoir appris les langages Swift et SwiftUI, appris à manipuler xCode, nous avons réaliser le prototype. Retrouvez le prototype dans la section réalisations. J'ai tout remanié pour que cela soit fait par moi-même.", logopro: "simplon", cityP: .lille)]


var tabBarItem : [TabItemData] = [TabItemData(imageTab: "helloblackmemoji", selectedImage: "hellomemoji", titleTab: "Qui suis-je?"),
TabItemData(imageTab: "blackmemoji", selectedImage: "memojipng", titleTab: "Expériences"),
TabItemData(imageTab: "studyblackmemoji", selectedImage: "studymemoji", titleTab: "Études"),
TabItemData(imageTab: "loveblackmemoji", selectedImage: "lovememoji", titleTab: "Intérêts"),
TabItemData(imageTab: "callblackmemoji", selectedImage: "callmemoji", titleTab: "Contacts")]
