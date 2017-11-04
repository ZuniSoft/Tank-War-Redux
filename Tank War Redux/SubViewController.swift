//
//  SubViewController.swift
//  Tank War Redux
//
//  Created by Keith Davis on 11/2/17.
//  Copyright © 2017 Keith Davis. All rights reserved.
//
import Foundation
import UIKit

class SubViewController: UIViewController,JSButtonDelegate, JSAnalogueStickDelegate{
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.white
        srand48(Int(time(nil)))
        analogueStick.delegate=self;
        fireButton.titleLabel.text="F"
        fireButton.backgroundImage=UIImage(named: "button.png")!
        fireButton.backgroundImagePressed=UIImage(named: "button-pressed.png")!
        fireButton.delegate=self
        analogueStick.alpha=0.7
        fireButton.alpha=0.7
        player.tanks.append(Tank(x: Tank.paintWidth-32, y: 0, attribute: false, client: player,toward: .down))
        player.tanks.append(Tank(x:Tank.paintWidth-32, y: Tank.paintHeigth-32, attribute: false, client: player,toward: .up))
        let queue=DispatchQueue.global(qos: .default)
        queue.async{
            while(true){
                DispatchQueue.main.async{
                    let view1=self.player.paint()
                    let view=self.view.viewWithTag(100)
                    if(view != nil){
                        view?.removeFromSuperview()
                    }
                    self.view.insertSubview(view1, at: 0)
                }
                Thread.sleep(forTimeInterval: 0.04)
            }
        }
        // Do any additional setup after loading the view.
    }
    
    var player=TankWarClient()
    @IBOutlet weak var analogueStick: JSAnalogueStick!
    @IBOutlet weak var fireButton: JSButton!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func buttonPressed(_ button:JSButton)
    {
    }
    
    @objc func buttonReleased(_ button:JSButton)
    {
        player.shells.append(Shell(tank: player.myTank,client:player,attribute:true))
    }
    
    @objc func analogueStickDidChangeValue(_ analogueStick:JSAnalogueStick)
    {
        if(analogueStick.xValue==0 && analogueStick.yValue==0){
            player.myTank.isWalk=false
        }
        else if(absolute(analogueStick.xValue)>=absolute(analogueStick.yValue) && analogueStick.xValue>0){
            player.myTank.playerTankToward = .right
            player.myTank.isWalk=true
        }
        else if(absolute(analogueStick.xValue)>=absolute(analogueStick.yValue) && analogueStick.xValue<0){
            player.myTank.playerTankToward = .left
            player.myTank.isWalk=true
        }
        else if(absolute(analogueStick.xValue)<absolute(analogueStick.yValue) && analogueStick.yValue>0){
            player.myTank.playerTankToward = .up
            player.myTank.isWalk=true
        }
        else if(absolute(analogueStick.xValue)<absolute(analogueStick.yValue) && analogueStick.yValue<0){
            player.myTank.playerTankToward = .down
            player.myTank.isWalk=true
        }
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
}





