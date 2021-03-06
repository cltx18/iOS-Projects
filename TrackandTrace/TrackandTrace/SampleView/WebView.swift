//
//  WebView.swift
//  SwiftUINavigation
//
//  Created by Chee Ket Yung on 10/01/2021.
//

import SwiftUI
import WebKit

struct WebView : UIViewRepresentable {
    
    let urlString : String
    
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        if let url = URL(string: urlString) {
            uiView.load( URLRequest(url: url ) )
            class FullScreenWKWebView: WKWebView {
                override var safeAreaInsets: UIEdgeInsets {
                    return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
                }
            }
                
        }
    }

}



struct WebView_Previews : PreviewProvider {
    static var previews: some View {
        WebView(urlString: "www.loganthompson.us" )
    }
}
