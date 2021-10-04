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
    
    // SwiftUI calls this makeCoordinator() method before makeUIViewController(context:),
    // so that you have access to the coordinator object when configuring your view controller.
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
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
            [context.coordinator.controllers[0]], direction: .forward, animated: true)
    }
    
    // SwiftUI manages your UIViewControllerRepresentable type’s coordinator,
    // and provides it as part of the context when calling the methods you created above.
    class Coordinator: NSObject {
        var parent: PageViewController
        var controllers = [UIViewController]()
        
        init(_ pageViewController: PageViewController) {
            parent = pageViewController
            controllers = parent.pages.map { UIHostingController(rootView: $0) }
        }
    }
}
