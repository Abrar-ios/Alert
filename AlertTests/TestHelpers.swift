//
//  TestHelpers.swift
//  AlertTests
//
//  Created by HAQQQABD on 19/08/2023.
//

import UIKit

func tap(_ button: UIButton){
    button.sendActions(for: .touchUpInside)
}


func executeRunLoop() {
    RunLoop.current.run(until: Date())
}
