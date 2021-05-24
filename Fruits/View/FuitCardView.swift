//
//  FuitCardView.swift
//  Fruits
//
//  Created by Farrukh Makhmudov on 2021/5/24.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - PROPERTIES
    
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //FRUIT: IMAGE
                
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.2), radius: 3, x: 3, y: 2)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                //FRUIT: TITLE

                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                //FRUIT: HEADLINE
                
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .frame(width: 380)
                
                //FRUIT: BUTTON
                StartButtonView()
            }//: VSTACK
        }//: ZSTACK
        .onAppear{
            withAnimation(.easeOut(duration: 0.6)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}


//MARK: - PREVIEW

struct FuitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[2])
    }
}
