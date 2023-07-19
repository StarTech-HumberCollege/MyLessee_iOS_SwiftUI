//
//  PostView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Tuyi Chen on 2023-07-18.
//

import SwiftUI

struct PostView: View {
    
    let icon: String
    let name: String
    let content: String
    let images: [String]
    let liked: Bool
    let comments: [String]
    
    @ViewBuilder
    var body: some View {
        VStack {

            HStack {
                /// Displays user icon
                VStack {
                    Image(icon)
                        .resizable()
                        .frame(width: 50, height: 50)
                    Spacer()
                }.frame(width: 50)
                
                VStack {
                    /// Displays user name
                    HStack {
                        Text(name).bold().font(.system(size: 18))
                            .foregroundColor(Color.black)
                            .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 0))
                        Spacer()
                    }
                    
                    /// Displays the content
                    Text(content).font(.system(size: 16))
                        .foregroundColor(Color.black)
                        .padding(EdgeInsets(top: 1, leading: 30, bottom: 0, trailing: 0))
                    
                    /// Displays images
                    if (images.count != 0) {
                        Image(images[0]).resizable()
                            .frame(width: 200, height: 120)
                    }
                    
                    /// Button of likes and comments
                    HStack {
                        Spacer().frame(width: 35)
                        /// Like
                        VStack {
                            /// TODO: Need to update liked icon
                            Image("likeIcon").resizable()
                                .frame(width: 20, height: 20).foregroundColor(liked ? .blue : .gray)
                            Text("Like").font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        Spacer().frame(width: 30)
                        
                        /// Comment
                        VStack {
                            /// TODO: Need to update liked icon
                            Image("commentIcon").resizable()
                                .frame(width: 20, height: 20).foregroundColor(liked ? .blue : .gray)
                            /// TODO: Need to update comments in sinlge/plural
                            Text("\(comments.count) Comments").font(.system(size: 10))
                                .foregroundColor(Color.black)
                        }
                        Spacer()
                    }
                }
            }
            Divider()
        }
        .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(icon: "tuyi", name: "Tuyi Chen", content: "Hi everyone! I'm Tuyi and just recently moved to Toronto. I'm in search of a 2 bed apartment to share with my sister in the midtown area, we are looking to pay around $2,500 plus utilities.", images:["image1"], liked: true, comments:[])
    }
}
