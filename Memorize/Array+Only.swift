//
//  Array+Only.swift
//  Memorize
//
//  Created by Kamil Fijalski on 25/08/2020.
//  Copyright © 2020 FunctionReality. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
