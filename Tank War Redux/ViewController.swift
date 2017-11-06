//
//  ViewController.swift
//  Tank War Redux
//
//  Created by Keith Davis on 11/3/17.
//  Copyright © 2017 Keith Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func blueButtonPressed(_ sender: UIButton) {
        let blueView=storyboard?.instantiateViewController(withIdentifier: "BluetoothView") as! BluetoothViewController
        blueView.modalTransitionStyle = .flipHorizontal
        self.present(blueView, animated: true, completion: nil)
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let subVc=storyboard?.instantiateViewController(withIdentifier: "SingleView")
            as! SingleViewController
        subVc.modalTransitionStyle = .flipHorizontal
        self.present(subVc, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.white
        
        //let deskView = UIView(frame:CGRectMake(4,10,400,308))
        //deskView.backgroundColor = UIColor(patternImage: UIImage(named:"desk.jpg")!)
        //view.addSubview(deskView)
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    /*override func touchesEnded(touches: Set<UITouch>,
     withEvent event: UIEvent?) {
     let view=self.view.viewWithTag(100)
     let subVc=SubViewController()
     subVc.modalTransitionStyle = .PartialCurl
     self.presentViewController(subVc, animated: true, completion: nil)
     view?.removeFromSuperview()
     }*/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
