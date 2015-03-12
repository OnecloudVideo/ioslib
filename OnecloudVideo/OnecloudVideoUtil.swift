//
//  onecloudVideoUtil.swift
//  VideoPlayer
//
//  Created by kinghai on 15/3/6.
//  Copyright (c) 2015年 messel. All rights reserved.
//


import Foundation
import CoreMedia

import AVKit
import AVFoundation

/*!
@class			OnecloudVideoUtil

@discussion
OnecloudVideoUtil has several useful method to add refer for http request.

*/
public class OnecloudVideoUtil : AVPlayer
{
    /*!
    @method			getAVPlayer:
    @param			url
    @param          referer
    @discussion
    Get a avplayer for playing video deploying in onecloud video platform.
    */
    public class func getAVPlayer(url : String!, referer :String!) -> AVPlayer? {
        
        let urlWithReferer = getUrlWithReferer(url, referer:referer)
        
        return AVPlayer(URL: NSURL(string: urlWithReferer))
    }
    
    /*!
    @method			getUrlWithReferer:
    @param			url
    @param          referer
    @discussion
        Get a valid video url which deploying in onecloud video platform.
    */
    public class func getUrlWithReferer(url : String!, referer : String!) -> String! {
        return "\(url)?Referer=\(referer)"
    }
}