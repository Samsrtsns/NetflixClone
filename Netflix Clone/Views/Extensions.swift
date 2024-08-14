//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Samet KATI on 14.08.2024.
//

import Foundation


extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
