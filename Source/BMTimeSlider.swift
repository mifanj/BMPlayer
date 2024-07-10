//
//  BMTimeSlider.swift
//  Pods
//
//  Created by BrikerMan on 2017/4/2.
//
//

import UIKit

public class BMTimeSlider: UISlider {
    override open func trackRect(forBounds bounds: CGRect) -> CGRect {
        let trackHeight: CGFloat = 3
        let customBounds = CGRect(origin: .zero, size: CGSize(width: bounds.size.width, height: trackHeight))
        super.trackRect(forBounds: customBounds)
        return customBounds
    }
    
    override open func thumbRect(forBounds bounds: CGRect, trackRect rect: CGRect, value: Float) -> CGRect {
        let rect = super.thumbRect(forBounds: bounds, trackRect: rect, value: value)
        let newx = rect.origin.x - 11.5
        let newy = rect.origin.y - 11.5
        let newRect = CGRect(x: newx, y: newy, width: 30, height: 30)
        return newRect
    }
}
