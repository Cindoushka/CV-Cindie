//
//  BubbleTest.swift
//  CurriculumVitae
//
//  Created by apprenant50 on 12/06/2022.
//

import SwiftUI
import AVKit

struct BubbleTest: View {
    
    @State var scale : CGFloat = 1
    let rouge = Color(red: 0.23, green: 0.05, blue: 0.14)
    
    @State var audio : AVAudioPlayer!

    
    var body: some View {
                       
                ZStack {
                    ForEach (1...50, id:\.self) { _ in
                        Circle ()
                            .foregroundColor(Color (red: .random(in: 0.6...1),
                                                    green: 0.4,
                                                    blue: .random(in: 0.8...1)))
                        
                            .blendMode(.colorDodge) // The bottom circle is lightened by an amount determined by the top layer
                            .animation (Animation.spring (dampingFraction: 0.5)
                                            .repeatForever()
                                            .speed (.random(in: 0.05...0.4))
                                            .delay(.random (in: 0...1)), value: scale
                            )
                        
                            .scaleEffect(self.scale * .random(in: 0.1...3))
                            .frame(width: .random(in: 1...100),
                                   height: CGFloat.random (in:20...100),
                                   alignment: .center)
                            .position(CGPoint(x: .random(in: 0...1112),
                                              y: .random (in:0...834)))
                    }
                }
                .onAppear {
//                    self.scale = 1.2 // default circle scale
//                    let song = NSDataAsset (name: "blockbuster")
//                               self.audio = try! AVAudioPlayer(data: song!.data, fileTypeHint: "mp3")
//                               self.audio.play()
                               self.scale = 1.2 // default circle scale
                }
                
                .drawingGroup(opaque: false, colorMode: .linear)
                .background(
                    Rectangle()
                        .foregroundColor(Color("lightpink")))
                .ignoresSafeArea()
            }
}
struct BubbleTest_Previews: PreviewProvider {
    static var previews: some View {
        BubbleTest()
    }
}
