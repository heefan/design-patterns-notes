//
//  example1Tests.swift
//  example1Tests
//
//  Created by SIADEV on 8/11/19.
//  Copyright © 2019 Singapore Airlines. All rights reserved.
//

import XCTest
@testable import example1

class example1Tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    class WelcomeViewController: UIViewController {
        
        class ContentView: UIView {
            
            var titleLabel = UILabel()
            var actionButton = UIButton()
            
            override init(frame: CGRect) {
                super.init(frame: frame)
                setup()
            }
            
            required init?(coder decoder: NSCoder) {
                super.init(coder: decoder)
                setup()
            }
            
            func setup() {
                addSubview(titleLabel)
                addSubview(actionButton)
            }
        }
        
        override func loadView() {
            view = ContentView()
        }
    }
    
    func apply<T: Theme>(theme: T, for component: Component) {
        component.accept(theme: theme)
    }
    
    func testComposit() {
        print("\nClient: Applying 'default' theme for 'UIButton'")
        apply(theme: DefaultButtonTheme(), for: UIButton())
        
        print("\nClient: Applying 'night' theme for 'UIButton'")
        apply(theme: NightButtonTheme(), for: UIButton())
        
        
        print("\nClient: Let's use View Controller as a composite!")
        
        /// Night theme
        print("\nClient: Applying 'night button' theme for 'WelcomeViewController'...")
        apply(theme: NightButtonTheme(), for: WelcomeViewController())
        print()
        
        print("\nClient: Applying 'night label' theme for 'WelcomeViewController'...")
        apply(theme: NightLabelTheme(), for: WelcomeViewController())
        print()
        
        /// Default Theme
        print("\nClient: Applying 'default button' theme for 'WelcomeViewController'...")
        apply(theme: DefaultButtonTheme(), for: WelcomeViewController())
        print()
        
        print("\nClient: Applying 'default label' theme for 'WelcomeViewController'...")
        apply(theme: DefaultLabelTheme(), for: WelcomeViewController())
        print()
    }

}
