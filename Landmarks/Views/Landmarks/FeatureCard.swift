//
//  FeatureCard.swift
//  Landmarks
//
//  Created by Danh Tu on 04/10/2021.
//

import SwiftUI

struct FeatureCard: View {
    var landmark: Landmark
    
    var body: some View {
        landmark.featureImage?
            .resizable()
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(landmark: ModelData().landmarks[0])
    }
}
