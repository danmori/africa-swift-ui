//
//  CenterModifier.swift
//  Africa
//
//  Created by Dan Mori on 12/07/22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
