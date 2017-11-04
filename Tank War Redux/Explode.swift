//
//  Explode.swift
//  Tank War Redux
//
//  Created by Keith Davis on 11/3/17.
//  Copyright © 2017 Keith Davis. All rights reserved.
//

import Foundation

class Explode{
    var x:CGFloat
    var y:CGFloat
    var time:Int
    static let image=UIImage(named: "boom.png")!

    init(x:CGFloat,y:CGFloat){
        self.x=x-5
        self.y=y-5
        time=4
    }
    
    func draw(_ view:UIView){
        let explode=UIImageView(image: Explode.image)
        explode.frame = CGRect(x: x, y: y, width: 10, height: 10)
        time-=1
        view.addSubview(explode)
    }
}
