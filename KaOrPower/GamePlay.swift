//
//  GamePlay.swift
//  KaOrPower
//
//  Created by Koki on 2022/10/13.
//

//カタカナ ["A001","A002","A003","A004","A005","A006","A007","A008","A009","A010","A011","A012","A013","A014","A015","A016","A017","A018","A019","A020","A021","A022","A023","A024","A025","A026","A027","A028","A029","A030","A031","A032","A033","A034","A035","A036","A037","A038","A039","A040","A041","A042","A043","A044","A045","A046","A047","A048","A049","A050"]

//漢字 ["001","002","003","004","005","006","007","008","009","010","011","012","013","014","015","016","017","018","019","020","021","022","023","024","025","026","027","028","029","030","031","032","033","034","035","036","037","038","039","040","041","042","043","044","045","046","047","048","049","050"]


import SwiftUI
import Foundation

struct GamePlay: View {
    
    
    var allArray = ["A001","A002","A003","A004","A005","A006","A007","A008","A009","A010","A011","A012","A013","A014","A015","A016","A017","A018","A019","A020","A021","A022","A023","A024","A025","A026","A027","A028","A029","A030","A031","A032","A033","A034","A035","A036","A037","A038","A039","A040","A041","A042","A043","A044","A045","A046","A047","A048","A049","A050","001","002","003","004","005","006","007","008","009","010","011","012","013","014","015","016","017","018","019","020","021","022","023","024","025","026","027","028","029","030","031","032","033","034","035","036","037","038","039","040","041","042","043","044","045","046","047","048","049","050"]
    
    @State var score_num: Int = 0
    
    @Binding var GamePlay_Sheet: Bool
    @State var isCheckedHeart1: Bool = true
    @State var isCheckedHeart2: Bool = true
    @State var isCheckedHeart3: Bool = true
    @State private var showResult: Bool = false
    
    let soundPlay = SoundPlay()
    
    var body: some View {
        
        let kataArrays: ArraySlice<String> = allArray[0..<50]
        let kanjiArrays: ArraySlice<String> = allArray[50..<100]
        let empty = allArray.randomElement()!
        
        NavigationStack{
            ZStack {
                Color("Color2")
                    .ignoresSafeArea()
                
                VStack{
                    HStack{
                        HStack(spacing: 20){
                            Text("スコア:")
                                .font(.system(size:20))
                            Text("\(score_num)")
                                .font(.system(size:30))
                            
                        }
                        .frame(width: 200, height: 50)
                        .border(Color.black,width: 3)
                        .background(Color.white)
                        .bold()
                        .padding(.top)
                        
                        //左
                        HeartCheckMark(isChecked: $isCheckedHeart3)
                            .padding(.top)
                        //中
                        HeartCheckMark(isChecked: $isCheckedHeart2)
                            .padding(.top)
                        //右
                        HeartCheckMark(isChecked: $isCheckedHeart1)
                            .padding(.top)
                    }
                    
                    Spacer()
                    VStack{
                        if kataArrays.contains(empty){
                            Image("\(empty)")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .border(Color.black,width: 4)
                        } else if kanjiArrays.contains(empty){
                            Image("\(empty)")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .border(Color.black,width: 4)
                        }
                    }
                    
                    HStack{
                        //○ボタン
                        Button(action:{
                            if kataArrays.contains(empty){
                                soundPlay.correctPlay()
                                score_num += 2
                                if score_num == 10 || score_num == 11{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 20 || score_num == 21{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 30 || score_num == 31{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 40 || score_num == 41{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 50 || score_num == 51{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 60 || score_num == 61{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 70 || score_num == 71{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 80 || score_num == 91{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 90 || score_num == 91{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 100 || score_num == 101{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 150 || score_num == 151{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }else if score_num == 200 || score_num == 201{
                                        if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                            isCheckedHeart1.toggle()
                                            isCheckedHeart2.toggle()
                                        }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                            isCheckedHeart1.toggle()
                                        }
                                    }else if score_num == 250 || score_num == 251{
                                        if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                            isCheckedHeart1.toggle()
                                            isCheckedHeart2.toggle()
                                        }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                            isCheckedHeart1.toggle()
                                        }
                                    }else if score_num == 300 || score_num == 301{
                                        if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                            isCheckedHeart1.toggle()
                                            isCheckedHeart2.toggle()
                                        }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                            isCheckedHeart1.toggle()
                                        }
                                    }
                                }
                            } else{
                                soundPlay.incorrectPlay()
                                if isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3 {
                                    isCheckedHeart1.toggle()
                                }else if isCheckedHeart2 && isCheckedHeart3 {
                                    isCheckedHeart2.toggle()
                                } else if isCheckedHeart3 {
                                    isCheckedHeart3.toggle()
                                    self.showResult.toggle()
                                }
                                score_num -= 1
                            }
                        }
                        ){
                            Text("○")
                                .font(.system(size:150))
                                .foregroundColor(Color.black)
                                .frame(width: 200,height: 200)
                                .border(Color.black,width: 10)
                                .background(Color.red)
                                .bold()
                                .padding(.bottom)
                        }
                        .alert("結果", isPresented: $showResult){
                            Button("OK"){
                                soundPlay.clickPlay()
                                score_num = 0
                                isCheckedHeart1.toggle()
                                isCheckedHeart2.toggle()
                                isCheckedHeart3.toggle()
                            }
                        }message:{
                            Text("あなたのスコアは\(score_num)です")
                        }
                        
                        //×ボタン
                        Button(action:{
                            if kanjiArrays.contains(empty){
                                soundPlay.correctPlay()
                                score_num += 2
                                if score_num == 10 || score_num == 11{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 20 || score_num == 21{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 30 || score_num == 31{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 40 || score_num == 41{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 50 || score_num == 51{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 60 || score_num == 61{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 70 || score_num == 71{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 80 || score_num == 91{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 90 || score_num == 91{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 100 || score_num == 101{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 100 || score_num == 101{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }
                                }else if score_num == 150 || score_num == 151{
                                    if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                        isCheckedHeart2.toggle()
                                    }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                        isCheckedHeart1.toggle()
                                    }else if score_num == 200 || score_num == 201{
                                        if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                            isCheckedHeart1.toggle()
                                            isCheckedHeart2.toggle()
                                        }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                            isCheckedHeart1.toggle()
                                        }
                                    }else if score_num == 250 || score_num == 251{
                                        if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                            isCheckedHeart1.toggle()
                                            isCheckedHeart2.toggle()
                                        }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                            isCheckedHeart1.toggle()
                                        }
                                    }else if score_num == 300 || score_num == 301{
                                        if !isCheckedHeart1 && !isCheckedHeart2 && isCheckedHeart3{
                                            isCheckedHeart1.toggle()
                                            isCheckedHeart2.toggle()
                                        }else if !isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3{
                                            isCheckedHeart1.toggle()
                                        }
                                    }
                                }
                            } else{
                                soundPlay.incorrectPlay()
                                if isCheckedHeart1 && isCheckedHeart2 && isCheckedHeart3 {
                                    isCheckedHeart1.toggle()
                                }else if isCheckedHeart2 && isCheckedHeart3 {
                                    isCheckedHeart2.toggle()
                                }else if isCheckedHeart3 {
                                    isCheckedHeart3.toggle()
                                    self.showResult.toggle()
                                }
                                score_num -= 1
                            }
                        }){
                            Text("✖︎")
                                .font(.system(size:150))
                                .foregroundColor(Color.black)
                                .frame(width: 200,height: 200)
                                .border(Color.black, width: 10)
                                .background(Color.blue)
                                .bold()
                                .padding(.bottom)
                        }
                        .alert("結果", isPresented: $showResult){
                            Button("OK"){
                                soundPlay.clickPlay()
                                score_num = 0
                                isCheckedHeart1.toggle()
                                isCheckedHeart2.toggle()
                                isCheckedHeart3.toggle()
                            }
                        }message:{
                            Text("あなたのスコアは\(score_num)です")
                        }
                    }
                }
            }
        }
    }
}


struct HeartCheckMark: View{
    
    @Binding var isChecked: Bool
    
    var body: some View{
        Image(systemName: isChecked ? "heart.fill" : "heart.slash")
            .font(.title)
    }
}


struct GamePlay_Previews: PreviewProvider {
    static var previews: some View {
        GamePlay(GamePlay_Sheet: Binding.constant(false))
    }
}
