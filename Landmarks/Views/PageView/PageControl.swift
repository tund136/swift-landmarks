//
//  PageControl.swift
//  Landmarks
//
//  Created by Danh Tu on 05/10/2021.
//

import SwiftUI
import UIKit

// UIViewRepresentable and UIViewControllerRepresentable types have the same life cycle,
// with methods that correspond to their underlying UIKit types.
struct PageControl: UIViewRepresentable {
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
}
