//
//  ScribbleView.swift
//  Scribble
//
//  Created by Smith, Maxxfield Uriah on 11/15/22.
//

import UIKit

class ScribbleView: UIView {
    @IBInspectable
    var color: UIColor = UIColor.red
    @IBInspectable
    var lineWidth: CGFloat = 3
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        color.set()
        let rectangle = CGRect(x: 100, y: 100, width: 40, height: 40)
        let fillRect = CGRect(x: 101, y: 101, width: 38, height: 38)
        let context: CGContext = UIGraphicsGetCurrentContext()!
        context.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        context.stroke(rectangle)
        UIRectFill(fillRect)
        
        color = UIColor.blue
        color.set()
        context.setLineWidth(lineWidth)
        context.move(to: CGPoint(x: 50, y: 50))
        context.addLine(to: CGPoint(x: 200, y: 200))
        context.strokePath()
        
        let path = UIBezierPath()
        path.lineWidth = lineWidth
        path.move(to: CGPoint(x: 50, y: 50))
        path.addLine(to: CGPoint(x: 90, y: 150))
        path.addLine(to: CGPoint(x: 40, y: 140))
        path.addLine(to: CGPoint(x: 20, y: 120))
        path.close()
        path.stroke()
        color = UIColor.green
        color.set()
        path.fill()
        
        let path2 = UIBezierPath(arcCenter: CGPoint(x: 250, y: 250), radius: 50, startAngle: 0, endAngle: CGFloat(2 * Double.pi), clockwise: false)
        
        path2.stroke()
        
    }


}
