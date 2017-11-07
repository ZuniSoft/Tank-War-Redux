//
//  Wall.swift
//  Tank War Redux
//
//  Created by Keith Davis on 11/3/17.
//  Copyright © 2017 Keith Davis. All rights reserved.
//

import Foundation

class Wall{
    var ws:[Rectangle]
    static let w1=UIImage(named: "tile1.png")!
    static let w2=UIImage(named: "tile2.png")!
    static let w3=UIImage(named: "tile3.png")!
    
    init(){
        ws=[Rectangle(x: 0,y: 191,w: 32,h: 32)]
        ws.append(Rectangle(x: 568,y: 191,w: 32,h: 32))
        ws.append(Rectangle(x: 284,y: 382,w: 32,h: 32))
        ws.append(Rectangle(x: 100,y: 230,w: 32,h: 128))
        ws.append(Rectangle(x: 200,y: 230,w: 32,h: 128))
        ws.append(Rectangle(x: 350,y: 230,w: 32,h: 128))
        ws.append(Rectangle(x: 450,y: 230,w: 32,h: 128))
        ws.append(Rectangle(x: 520,y: 262,w: 32,h: 32))
        ws.append(Rectangle(x: 232,y: 262,w: 32,h: 32))
        ws.append(Rectangle(x: 120,y: 100,w: 64,h: 32))
        ws.append(Rectangle(x: 400,y: 100,w: 64,h: 32))
        ws.append(Rectangle(x: 284,y: 0,w: 32,h: 32))
        ws.append(Rectangle(x: 252,y: 140,w: 96,h: 32))
    }
    
    func draw(_ view:UIView){
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
        w.frame = CGRect(x: 100, y: 230, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 100,y: 262, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 100, y: 294, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 100, y: 326, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 200, y: 230, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 200,y: 262, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 200, y: 294, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 200, y: 326, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 350, y: 230, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 350,y: 262, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 350, y: 294, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 350, y: 326, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 450, y: 230, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 450,y: 262, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 450, y: 294, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 450, y: 326, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w3)
        w.frame = CGRect(x: 520, y: 262, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w2)
        w.frame = CGRect(x: 232, y: 262, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 120, y: 100, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w2)
        w.frame = CGRect(x: 152, y: 100, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w2)
        w.frame = CGRect(x: 400, y: 100, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w1)
        w.frame = CGRect(x: 432, y: 100, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w3)
        w.frame = CGRect(x: 282, y: 0, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w2)
        w.frame = CGRect(x: 252, y: 140, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w2)
        w.frame = CGRect(x: 284,y: 140, width: 32, height: 32)
        view.addSubview(w)
        w = UIImageView(image: Wall.w2)
        w.frame = CGRect(x: 316,y: 140, width: 32, height: 32)
        view.addSubview(w)
    }
}
