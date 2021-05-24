//
//  StartButtonView.swift
//  Fruits
//
//  Created by Farrukh Makhmudov on 2021/5/24.
//

import SwiftUI

struct StartButtonView: View {
    
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    
    
    var body: some View {
        Button(action: {
            print("Exit the onboarding ")
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//HSTACK
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.15))
        }).accentColor(.white )
    }
}

//MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
