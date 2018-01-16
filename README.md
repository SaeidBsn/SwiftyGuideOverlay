# SwiftyHelpOverlay
App Intro / instruction component to show data over app UI at run time and real-time!

Easy to use, Animated and customizable setup.

Show animated lines to the desire object with related details.

Demo project included for details 


![2](https://cloud.githubusercontent.com/assets/9967486/21859393/a6fbe282-d841-11e6-9271-e0e9e9c6bb6c.gif)
![1](https://cloud.githubusercontent.com/assets/9967486/21859399/ac3822a6-d841-11e6-9272-64c553630e1c.gif)


## Requirements
- Xcode 8+
- Swift 3+
- iOS 8+


## Installation
Install manually
------
Drag `Source` folder to your project and use!

Install using Cocoapods
------
```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>' do
pod 'SwiftyOverlay'
end
```



## How to use

```swift
    // Include SkipOverlayDelegate protocol to ViewController 

    func onSkipSignal(){
        // Skip each item here
        // Check sample project for more info on this
        /// NEW: now with better support for barbutton items - support tableview rows
        
        /// TableView
        o.drawOverlay(to: <#T##UITableView#>, section: <#T##Int#>, row: <#T##Int#>, desc: <#T##String#>)
        
        /// UIBarButtonItem
        o.drawOverlay(to: <#T##UIBarButtonItem#>, desc: <#T##String#>)

        /// Any other views
        o.drawOverlay(to: <#T##UIView#>, desc: <#T##String#>, isCircle: <#T##Bool#>)
        
        /// TabBar Items
        // Comming soon
    }

    // create an instance of GDOverlay()
    var o = GDOverlay()
    
    // do customizations in viewDidAppear()

    override func viewDidAppear(_ animated: Bool){
        // Appereance customizations
        o.arrowColor = UIColor.red
        o.showBorder = false
        o.boxBackColor = UIColor.clear

        o.highlightView = true
        o.arrowWidth = 2.0
        o.backColor = UIColor.blue
        o.boxBorderColor = UIColor.black
        o.headColor = UIColor.white
        o.headRadius = 6
        o.labelFont = UIFont.systemFont(ofSize: 12)
        o.labelColor = UIColor.green
        
        // Currently only LineType.line_bubble and LineType.dash_bubble
        o.lineType = LineType.line_bubble
        o.lineType = LineType.dash_bubble
        
        // If view controller has navigation bar, use it
        // to calculate the correct height
        o.navHeight = o.calculateNavHeight(self)

        // Always set the delegate for SkipOverlayDelegate
        // for onSkipSignal() function call
        o.delegate = self
        
        self.onSkipSignal()
    }
```


## Licence

SwiftyHelpOverlay is available under the MIT license. See the [LICENSE.txt](https://github.com/SaeidBsn/SwiftyGuideOverlay/blob/master/Licence.txt) file for more info.

