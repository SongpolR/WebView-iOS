//
//  ContentView.swift
//  WebView
//
//  Created by Anonymous on 26/9/2567 BE.
//

import SwiftUI

let baseUrl = "https://www.google.com"

struct ContentView: View {
    @State var showLoading: Bool = false
    @State var showError: Bool = false
    @State var toggleReload: Bool = false
    
    var body: some View {
        VStack {
            if showError {
                Placeholder(
                    hero: "disconnected",
                    title: NSLocalizedString("error_title", comment: ""),
                    description: NSLocalizedString("error_description", comment: ""),
                    button: NSLocalizedString("try_again_button", comment: ""),
                    onButtonClick:{
                        showError = false
                        toggleReload.toggle()
                    }
                )
            } else {
                WebView(url: URL(string: baseUrl)!, showLoading: $showLoading, showError: $showError, toggleReload: $toggleReload)
                    .overlay(content: { showLoading ? ProgressView().tint(.blue).controlSize(.large) : nil })
                    .ignoresSafeArea(.keyboard, edges: .bottom)
            }
        }
    }
}

#Preview {
    ContentView()
}
