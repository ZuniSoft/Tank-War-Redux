//
//  Wall.swift
//  Tank War Redux
//
//  Created by Keith Davis on 11/3/17.
//  Copyright © 2017 Keith Davis. All rights reserved.
//

import Foundation

class Wall {
    var ws:[Rectangle]
    
    static let w1=UIImage(named: "tile1.png")!
    static let w2=UIImage(named: "tile2.png")!
    static let w3=UIImage(named: "tile3.png")!
    
    init() {
        ws=[Rectangle(x: 0,y: 191,w: 32,h: 32)]
        ws.append(Rectangle(x: 568,y: 191,w: 32,h: 32))
        ws.append(Rectangle(x: 284,y: 382,w: 32,h: 32))
        ws.append(Rectangle(x: 100,y: 100,w: 32,h: 155))
        ws.append(Rectangle(x: 200,y: 130,w: 32,h: 128))
        ws.append(Rectangle(x: 350,y: 130,w: 32,h: 128))
        ws.append(Rectangle(x: 450,y: 100,w: 32,h: 155))
        ws.append(Rectangle(x: 520,y: 262,w: 32,h: 32))
        ws.append(Rectangle(x: 232,y: 262,w: 32,h: 32))
        ws.append(Rectangle(x: 152,y: 340,w: 32,h: 32))
        ws.append(Rectangle(x: 350,y: 40,w: 32,h: 32))
        ws.append(Rectangle(x: 205,y: 0,w: 32,h: 32))
        ws.append(Rectangle(x: 275,y: 62,w: 32,h: 96))
        ws.append(Rectangle(x: 375,y: 325,w: 32,h: 32))
    }
    
    func draw(_ view:UIView) {
        var w:UIImageView
        w = UIImageView(image: Wall.w2)
        w.frame = CGRect(x: 0, y: 191, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w2)
        w.frame = CGRect(x: 568, y: 191, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w2)
        w.frame = CGRect(x: 284, y: 382, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 100, y: 130, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 100,y: 162, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 100, y: 194, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 100, y: 226, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 200, y: 130, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 200,y: 162, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 200, y: 194, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 200, y: 226, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 350, y: 130, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 350,y: 162, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 350, y: 194, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 350, y: 226, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 450, y: 130, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 450,y: 162, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 450, y: 194, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 450, y: 226, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w3)
        w.frame = CGRect(x: 520, y: 262, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w2)
        w.frame = CGRect(x: 232, y: 262, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 100, y: 100, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w2)
        w.frame = CGRect(x: 152, y: 340, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w2)
        w.frame = CGRect(x: 350, y: 40, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 450, y: 100, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w3)
        w.frame = CGRect(x: 205, y: 0, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w2)
        w.frame = CGRect(x: 275, y: 62, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w2)
        w.frame = CGRect(x: 275,y: 94, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w2)
        w.frame = CGRect(x: 275,y: 126, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w3)
        w.frame = CGRect(x: 375, y: 325, width: 32, height: 32)
        view.addSubview(w)
    }
}
