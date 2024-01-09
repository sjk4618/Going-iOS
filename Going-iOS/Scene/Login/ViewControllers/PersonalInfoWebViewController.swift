//
//  PersonalInfoWebViewController.swift
//  Going-iOS
//
//  Created by 곽성준 on 1/1/24.
//

import UIKit

import WebKit

final class PersonalInfoWebViewController: UIViewController {
    
    private var webView: WKWebView?
    private let urlString = "https://useworld.github.io/iOS/webview/"
    
    override func loadView() {
        super.loadView()
        webView = WKWebView(frame: self.view.frame)
        self.view = self.webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setWebView()
    }
}

private extension PersonalInfoWebViewController {
    func setWebView() {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            webView?.load(request)
        } else {
            print("Invalid URL string.")
        }
    }
}
