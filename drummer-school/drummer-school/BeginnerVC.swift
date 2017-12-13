//
//  BeginnerVC.swift
//  drummer-school
//
//  Created by Lance Robbins on 12/12/17.
//  Copyright © 2017 Appcation. All rights reserved.
//

import UIKit
import WebKit

class BeginnerVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // titleLbl.text = partyRock.videoTitle
        var videoURL = "<iframe src=\"https://player.twitch.tv/?channel=xphobiaa\" frameborder=\"0\" allowfullscreen=\"true\" scrolling=\"no\" height=\"378\" width=\"620\"></iframe><a href=\"https://www.twitch.tv/xphobiaa?tt_content=text_link&tt_medium=live_embed\" style=\"padding:2px 0px 4px; display:block; width:345px; font-weight:normal; font-size:10px; text-decoration:underline;\">Watch live video from Xphobiaa on www.twitch.tv</a>"
        webView.loadHTMLString(videoURL, baseURL: nil)
       
        var chatURL = "<iframe src=\"https://www.twitch.tv/xphobiaa/chat?popout=\" frameborder=\"0\" scrolling=\"no\" height=\"500\" width=\"350\"></iframe>"
        chatView.loadHTMLString(chatURL, baseURL: nil)
        
    }

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var chatView: WKWebView!
    

}
