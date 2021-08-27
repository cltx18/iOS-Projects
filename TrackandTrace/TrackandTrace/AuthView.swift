//
//  AuthView.swift
//  AuthView
//
//  Created by Logan Thompson on 8/20/21.
//

import SwiftUI
import WebKit

struct HomeView: View {
    @State private var sampleSubmissionIsShowing = false

    var body: some View {
        NavigationView {
        VStack {
            Image("CannID bag")
                .resizable()
                .frame(width: 300, height: 250)
                .scaledToFit()
            Spacer()
            Button(action: {
              sampleSubmissionIsShowing = true
            }) {
                Text ("Login")
                      .bold()
                      .padding()
                      .frame(maxWidth: .infinity)
                      .background(
                        Color.accentColor)
                      .foregroundColor(.white)
                      .cornerRadius(12.0)
                      .frame(width: 350, height: 50, alignment: .center)
                        }.sheet(isPresented: $sampleSubmissionIsShowing, onDismiss: {}, content: {
                            WebView(urlString: "https://mycannid.com")
            })
            Button(action: {
              sampleSubmissionIsShowing = true
            }) {
                Text ("Sign Up")
                      .bold()
                      .padding()
                      .frame(maxWidth: .infinity)
                      .background(
                        Color.accentColor)
                      .foregroundColor(.white)
                      .cornerRadius(12.0)
                      .frame(width: 350, height: 50, alignment: .center)
                        }.sheet(isPresented: $sampleSubmissionIsShowing, onDismiss: {}, content: {
                            WebView(urlString: "https://mycannid.com")
            })
            Spacer()
        }
        }
        
           }
    }

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
