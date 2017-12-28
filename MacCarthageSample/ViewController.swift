//
//  WebViewController.swift
//  WebViewSample
//
//  Created by Masanori Nakano on 2017/12/28.
//  Copyright © 2017年 Masanori Nakano. All rights reserved.
//

import Cocoa
import Alamofire

class ViewController: NSViewController {
    
    // MARK: - NSViewController
    
    override var nibName: NSNib.Name? {
        return NSNib.Name(rawValue: "ViewController")
    }

    // MARK: - NSViewController
    
    @IBAction private func buttonDidPush(_ sender: AnyObject) {
        guard let url: URL = URL(string: "https://en.wikipedia.org/w/api.php") else {
            return
        }
        
        let params: Parameters = [
            "action": "query",
            "format": "json",
            "meta": "tokens",
            "type": "login"
        ]
        
        let request: DataRequest = Alamofire.request(url,
                                                     method: HTTPMethod.get,
                                                     parameters: params)
        
        let handler: ((Alamofire.DataResponse<Any>) -> Void) =  { response in
            switch response.result {
            case .success(let value):
                if let json = value as? [String: Any] {
                    if let query = json["query"] as? [String: Any] {
                        if let tokens = query["tokens"] as? [String: String] {
                            if let logintoken = tokens["logintoken"] {
                                print(logintoken)
                            }
                        }
                    }
                } else {
                    // キャスト失敗
                }
            
            case .failure(_):
                // エラー
                break
            }
        }
        
        request.responseJSON(completionHandler: handler)
    }
    
}
