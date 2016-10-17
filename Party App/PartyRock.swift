//
//  PartyRock.swift
//  Party App
//
//  Created by Vasil Nechev on 10/14/16.
//  Copyright © 2016 Vasil Nechev. All rights reserved.
//

import Foundation

class PartyRock {
    
    private var _imageURL: String!
    private var _videoURL: String!
    private var _titleURL: String!
    
    var imageURL: String {return _imageURL}
    var videoURL: String {return _videoURL}
    var titleUTL: String {return _titleURL}
    
    init(imageURL: String, videoURL: String, titleURL: String) {
        self._imageURL = imageURL
        self._videoURL = videoURL
        self._titleURL = titleURL
    }
}
