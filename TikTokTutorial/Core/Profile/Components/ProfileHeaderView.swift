//
//  ProfileHeaderView.swift
//  TikTokTutorial
//
//  Created by Sidney MALEO on 13/05/2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                // profile image
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .foregroundStyle(Color(.systemGray5))
                
                // username
                Text("@lewis.hamilton")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            // state view
            HStack(spacing: 16) {
                UserStatView(value: 5, title: "Following")
                UserStatView(value: 1, title: "Followers")
                UserStatView(value: 7, title: "Likes")
            }
            
            // action Button
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            Divider()
            
            
        }
    }
}

#Preview {
    ProfileHeaderView()
}


