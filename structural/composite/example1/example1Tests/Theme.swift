//
//  Theme.swift
//  example1Tests
//
//  Created by SIADEV on 8/11/19.
//  Copyright © 2019 Singapore Airlines. All rights reserved.
//

import Foundation
import UIKit


protocol Theme: CustomStringConvertible {
    var backgroundColor: UIColor { get }
}

protocol ButtonTheme: Theme {
    var textColor: UIColor { get }
    var highlightedColor: UIColor { get }
}


protocol LabelTheme: Theme {
    var textColor: UIColor { get }
}

// ----------------------- Button ------------------

struct DefaultButtonTheme: ButtonTheme {
    var textColor = UIColor.red
    var highlightedColor = UIColor.white
    var backgroundColor = UIColor.orange

    var description: String {
        return "Default Button Theme"
    }
}

struct NightButtonTheme: ButtonTheme {
    var textColor = UIColor.white
    var backgroundColor = UIColor.black
    var highlightedColor = UIColor.red
    
    var description: String {
        return "Night Button Theme"
    }
}

// ----------------------- Label ------------------

struct DefaultLabelTheme: LabelTheme {
    var textColor = UIColor.red
    var backgroundColor = UIColor.orange
    
    var description: String {
        return "Default Label Theme"
    }
}

struct NightLabelTheme: LabelTheme {
    var backgroundColor = UIColor.black
    var textColor = UIColor.white

    var description: String {
        return "Night Label Theme"
    }
}
