//
//  ContentView.swift
//  KaOrPower
//
//  Created by Koki on 2022/10/13.
//

import SwiftUI
import AVFoundation
import UIKit

struct ContentView: View {
    
    //ゲーム画面への遷移
    @State var movingGameSheet = false
    //遊び方への遷移
    @State var GameRule_sheet = false
    
    let soundPlay = SoundPlay()
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("Color1")
                    .ignoresSafeArea()
                
                VStack{
                    Text("カor力")
                        .font(.system(size: 100,design: .monospaced))
                        .foregroundColor(Color.white)
                        .bold()
                    
                    Spacer()
                    
                    Image("Ka_01")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(100)
                    
                    Button(action:{
                        GameRule_sheet = true
                        soundPlay.clickPlay()
                    }){
                        Text("遊び方")
                            .bold()
                            .frame(maxWidth: .infinity)
                            .frame(height:80)
                            .foregroundColor(Color.white)
                            .background(Color.red.cornerRadius(20))
                            .font(.system(size: 40))
                            .padding()
                    }
                    .fullScreenCover(isPresented: $GameRule_sheet){
                        GameRule(isPresented: $GameRule_sheet)
                    }
                    
                    NavigationLink(destination: GamePlay(GamePlay_Sheet: $movingGameSheet)){
                        Text("はじめる")
                            .bold()
                            .frame(maxWidth: .infinity)
                            .frame(height:80)
                            .foregroundColor(Color.white)
                            .background(Color.red.cornerRadius(20))
                            .font(.system(size: 40))
                            .padding([.leading, .bottom, .trailing])
                    }
                }
            }
            .onAppear{
                soundPlay.mainSoundPlay()
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        GameRule(isPresented: Binding.constant(false))
        GamePlay(GamePlay_Sheet: Binding.constant(false))
    }
}
