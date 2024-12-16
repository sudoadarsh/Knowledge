//
//  DefaultAppTheme.swift
//  Knowledge
//
//  Created by Adarsh Sudarsanan on 14/12/24.
//

import SwiftUI

/// The default app theme.
struct DefaultAppTheme: AppTheme {
    var color       : any AppColor        = _AppColor()
    var spacing     : any AppSpacing      = _AppSpacing()
    var cornerRadius: any AppCornerRadius = _AppCornerRadius()
}

struct _AppColor: AppColor {
    var background : Color = Color(hex: 0xff000000)
    var primary    : Color = Color(hex: 0xff5182ee)
    var onPrimary  : Color = Color(hex: 0xffffffff)
    var secondary  : Color = Color(hex: 0xffd56677)
    var onSecondary: Color = Color(hex: 0xffffffff)
    var surface    : Color = Color(hex: 0xff34393b)
    var onSurface  : Color = Color(hex: 0xffffffff)
    var hintText   : Color = Color(hex: 0xff808080)
    var textField  : Color = Color(hex: 0xff292f30)
}

struct _AppSpacing: AppSpacing {
    var small : Double = 5.0
    var ideal : Double = 10.0
    var medium: Double = 15.0
    var large : Double = 20.0
}

struct _AppCornerRadius: AppCornerRadius {
    var small : Double = 5.0
    var ideal : Double = 10.0
    var medium: Double = 15.0
    var large : Double = 20.0
}
