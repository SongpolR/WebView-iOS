//
//  Placeholder.swift
//  WebView
//
//  Created by Anonymous on 26/9/2567 BE.
//

import SwiftUI

struct Placeholder: View {
    let hero: String
    let title: String
    let description: String
    let button: String
    let onButtonClick: () -> Void
    
    var body: some View {
        VStack(spacing: 16) {
            Image(hero)
                .resizable()
                .frame(width: 128, height: 128)
                .foregroundColor(.red)
            
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 16)
            
            Text(description)
                .font(.body)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            
            Button(action: {
                onButtonClick()
            }) {
                Text(button)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200)
                    .background(Color.teal)
                    .cornerRadius(10)
            }.padding(.top, 24)
        }
        .padding(.all, 16)
    }
}

#Preview {
    Placeholder(
        hero: "disconnected",
        title: NSLocalizedString("error_title", comment: ""),
        description: NSLocalizedString("error_description", comment: ""),
        button: NSLocalizedString("try_again_button", comment: ""),
        onButtonClick:{
        }
    )
}
