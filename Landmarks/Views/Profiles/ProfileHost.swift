//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Danh Tu on 04/10/2021.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @State private var draftProfile = Profile.default
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                if editMode?.wrappedValue == .active {
                    Button("Cancel") {
                        draftProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
            }
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData())
    }
}
