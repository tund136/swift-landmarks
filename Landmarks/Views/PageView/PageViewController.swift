//
//  PageViewController.swift
//  Landmarks
//
//  Created by Danh Tu on 04/10/2021.
//

import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]

    // SwiftUI calls this method a single time when it’s ready to display the view,
    // and then manages the view controller’s life cycle.
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)

        return pageViewController
    }

    // UIHostingController that hosts the page SwiftUI view on every update.
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers(
            [UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
    }
}
