//
//  GameRule.swift
//  KaOrPower
//
//  Created by Koki on 2022/10/13.
//

import SwiftUI

struct GameRule: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView{
            ZStack {
                Color("Color3")
                    .ignoresSafeArea()
                
                ScrollView{
                    VStack{
                        Image("01")
                            .resizable()
                            .frame(width: 300,height: 400)
                            .border(Color.black,width: 3)
                        VStack{
                            Text("カタカナの場合は「○」")
                                .font(.system(size:(20)))
                            Text("漢字の場合は「×」を選択してね")
                                .font(.system(size:(20)))
                        }
                        .frame(width: 320,height: 70)
                        .border(Color.red,width: 5)
                        .background(Color.yellow)
                        .bold()
                        .padding(.bottom)
                        
                        Image("02")
                            .resizable()
                            .frame(width: 300,height: 400)
                            .border(Color.black,width: 3)
                        VStack{
                            Text("正解すると「+2」点です")
                                .font(.system(size:(20)))
                        }
                        .frame(width: 320,height: 70)
                        .border(Color.red,width: 5)
                        .background(Color.yellow)
                        .bold()
                        .padding(.bottom)
                        
                        Image("03")
                            .resizable()
                            .frame(width: 300,height: 400)
                            .border(Color.black,width: 3)
                        VStack{
                            Text("不正解だと「-1」点です")
                                .font(.system(size:(20)))
                        }
                        .frame(width: 320,height: 70)
                        .border(Color.red,width: 5)
                        .background(Color.yellow)
                        .bold()
                        .padding(.bottom)
                        
                        Image("04")
                            .resizable()
                            .frame(width: 300,height: 400)
                            .border(Color.black,width: 3)
                        VStack{
                            Text("「♡」が0になるとゲーム終了です")
                                .font(.system(size:(20)))
                        }
                        .frame(width: 320,height: 70)
                        .border(Color.red,width: 5)
                        .background(Color.yellow)
                        .bold()
                        .padding(.bottom)
                        
                        
                    }
                    .frame(width: 360,height: 2050)
                    .border(Color.black,width: 5)
                    .background(Color.clear)
                    .padding(.top)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                        isPresented = false
                    } label: {
                        Text("閉じる")
                    }
                }
            }
        }
    }
}

struct GameRule_Previews: PreviewProvider {
    static var previews: some View {
        GameRule(isPresented: Binding.constant(false))
    }
}
