////
////  ContentView.swift
////  CurriculumVitae
////
////  Created by apprenant50 on 04/06/2022.
////
//
//import SwiftUI
//
//struct ContentView: View {
//    
//    
//    enum TabType: Int, CaseIterable {
//        case profile = 0
//        case exper
//        case format
//        case interst
//        case liens
//        
//        var tabItem: TabItemData {
//            switch self {
//            case .profile:
//                return TabItemData(imageTab: "helloblackmemoji", selectedImage: "hellomemoji", titleTab: "Qui suis-je?")
//            case .exper:
//                return TabItemData(imageTab: "blackmemoji", selectedImage: "memojipng", titleTab: "Expériences")
//            case .format:
//                return TabItemData(imageTab: "studyblackmemoji", selectedImage: "studymemoji", titleTab: "Études")
//            case .interst:
//                return TabItemData(imageTab: "loveblackmemoji", selectedImage: "lovememoji", titleTab: "Intérêts")
//            case .liens:
//                return TabItemData(imageTab: "callblackmemoji", selectedImage: "callmemoji", titleTab: "Contacts")
//                                   }
//            }
//        }
//        
//        @State var selectedIndex: Int = 0
//
//    @ViewBuilder
//    func getTabView(type: TabType) -> some View {
//        switch type {
//        case .profile:
//            Profile()
//        case .exper:
//            Experiences()
//        case .format:
//            Formations()
//        case  .interst:
//            Hobbies()
//        case .liens:
//            Contacts()
//        }
//    }
//    var body: some View {
//        TabView {
//
//            
//            CustomTabView(tabs: TabType.allCases.map({ $0.tabItem }), selectedIndex: $selectedIndex) { index in
//                      let type = TabType(rawValue: index) ?? .profile
//                      getTabView(type: type)
//                  }
//              }
//              
//             
//              }
//          }
//    
//    
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//
