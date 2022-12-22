//
//  MusicPlayerFullScreen.swift
//  AppleMusic
//
//  Created by Радик Ахметзянов on 12.12.2022.
//

import SwiftUI

struct MusicPlayerFullScreen: View {
    
    @Binding var artist: String
    @Binding var track: String
    @Binding var trackImage: String
    
    @State var trackSlider: Float = 0
    @State var volumeSlider: Float = 5
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 35, height: 7)
                .cornerRadius(5)
                .foregroundColor(.secondary)
                .onTapGesture(count: 2) {
                    isPresented.toggle()
                }
            
            Spacer()
            
            Image(trackImage)
                .resizable()
                .frame(width: 320, height: 320)
                .cornerRadius(10)
                .padding()
            
            Spacer()
            
            VStack(spacing: 30) {
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(track)
                                .font(.system(size: 18))
                                .bold()
                                .padding(.leading, 5)
                            
                            Text(artist)
                                .font(.system(size: 18))
                                .padding(.leading, 5)
                        }
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            Image(systemName: "ellipsis.circle")
                                .font(.system(size: 23))
                        })
                    }
                    
                    VStack {
                        Slider(value: $trackSlider, in: 0...59)
                            .tint(Color.secondary)
                        
                        HStack {
                            if trackSlider < 10 {
                                Text("00:0\(Int(trackSlider))")
                            } else {
                                Text("00:\(Int(trackSlider))")
                            }
                            
                            Spacer()
                            
                            if trackSlider > 50 {
                                Text("00:0\(59 - Int(trackSlider))")
                            } else {
                                Text("00:\(59 - Int(trackSlider))")
                            }
                        }
                        .font(.system(size: 14))
                        .foregroundColor(.secondary)
                    }
                }
                
                HStack(spacing: 40) {
                    Button(action: {}, label: {
                        Image(systemName: "backward.fill")
                            .resizable()
                            .frame(width: 35, height: 23)
                            .padding()
                    })
                    Button(action: {}, label: {
                        Image(systemName: "play.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "forward.fill")
                            .resizable()
                            .frame(width: 35, height: 23)
                            .padding()
                    })
                }
                
                HStack {
                    Image(systemName: "speaker.fill")
                        .font(.system(size: 12))
                    
                    Slider(value: $volumeSlider, in: -10...10)
                        .tint(Color.secondary)
                    
                    Image(systemName: "speaker.wave.3.fill")
                        .font(.system(size: 12))
                }
                
                HStack(spacing: 70) {
                    Button(action: {}, label: {
                        Image(systemName: "quote.bubble")
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "airplayaudio")
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "list.bullet")
                    })
                }
                .font(.system(size: 25))
            }
            .foregroundColor(.black)
            .padding(30)
        }
        .background {
            Image(trackImage)
                .resizable()
                .blur(radius: 100)
                .ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
        }
    }
}
