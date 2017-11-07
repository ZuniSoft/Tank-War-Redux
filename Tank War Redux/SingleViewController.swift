//
//  SubViewController.swift
//  Tank War Redux
//
//  Created by Keith Davis on 11/2/17.
//  Copyright © 2017 Keith Davis. All rights reserved.
//
import Foundation
import UIKit

class SingleViewController: UIViewController,JSButtonDelegate, JSAnalogueStickDelegate{

    static var isOver: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"tile5")!)
    
        analogueStick.delegate=self;
        fireButton.titleLabel.text="F"
        fireButton.backgroundImage=UIImage(named: "button.png")!
        fireButton.backgroundImagePressed=UIImage(named: "button-pressed.png")!
        fireButton.delegate=self
        analogueStick.alpha=0.7
        fireButton.alpha=0.7
        gameStatus.isHidden = true
        player.tanks.append(Tank(x: Tank.paintWidth-32, y: 0, attribute: false, client: player,toward: .down))
        player.tanks.append(Tank(x:Tank.paintWidth-32, y: Tank.paintHeight-32, attribute: false, client: player,toward: .up))
        
        SingleViewController.isOver = false
        var running: Bool = true
        var view1: UIView?
        
        let queue=DispatchQueue.global(qos: .default)
        queue.async{
            while(running){
                DispatchQueue.main.async{
                    view1=self.player.paint()
                    
                    if (SingleViewController.isOver == true) {
                        running = false
                    }
                    
                    let view=self.view.viewWithTag(100)
                    if(view != nil){
                        view?.removeFromSuperview()
                    }
                    self.view.insertSubview(view1!, at: 0)
                }
                Thread.sleep(forTimeInterval: 0.04)
            }
            
            //let storyboard = UIStoryboard(name: "Main", bundle: nil)
            //let controller = storyboard.instantiateViewController(withIdentifier: "View")
            //let rootViewcontroller = UIApplication.shared.delegate?.window??.rootViewController
            //rootViewcontroller?.present(controller, animated: true, completion: nil)
            
            // Game is over, go to pick game view controller
            DispatchQueue.main.async() {
                self.gameStatus.isHidden = false
                self.gameStatus.text = "Game Over !!"
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                let view=self.storyboard?.instantiateViewController(withIdentifier: "View")
                    as! ViewController
                view.modalTransitionStyle = .flipHorizontal
                self.present(view, animated: true, completion: nil)
            }
        }
        // Do any additional setup after loading the view.
    }
    
    var player=TankWarClient()
    @IBOutlet weak var analogueStick: JSAnalogueStick!
    @IBOutlet weak var fireButton: JSButton!
    @IBOutlet weak var gameStatus: UILabel!
    
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





