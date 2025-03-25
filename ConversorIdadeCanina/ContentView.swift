//
//  ContentView.swift
//  ConversorIdadeCanina
//
//  Created by COTEMIG on 11/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var idadeh: String = ""
    @State private var idadehcanina: String = ""
    @State private var erro: Bool = false
    
    func CalcularIdade(){
        erro = false
        if let idade = Int(idadeh), idade>0{
            erro = true
            let resultado = idade * 7
            idadehcanina = "\(resultado) anos"
        }

    }
    func Apagar(){
        erro = false
            idadehcanina = ""
        }
    var body: some View {
        VStack {
            Image("cachorro")
                .resizable()
                .frame(width:100,height: 100)
                .foregroundColor(.accentColor)
            Text("Calculadora de idade canina")
                .font(.title)
                .fontWeight(.light)
                .foregroundColor(.pink)
            TextField("Digite a idade humana",
                      text: $idadeh)
            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/9.0/*@END_MENU_TOKEN@*/)
            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
            Button(action: CalcularIdade){
                Text("Calcular")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.all, 4.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.499, saturation: 0.825, brightness: 0.888)/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/12.0/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                
            }
            Button(action: Apagar){
                Text("Limpar")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.all, 4.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.499, saturation: 0.825, brightness: 0.888)/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/12.0/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                
            }
            if erro == true {
                Text(idadehcanina)
                    .foregroundColor(.pink)
                    .padding()
            } else {
                Text(idadehcanina)
                    .padding()
            }
            
            
        }
        .padding()
        
        
    }
    

    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
