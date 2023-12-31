//
//  ContentView.swift
//  Music
//
//  Created by Mac on 12/12/23.
//  Copyright © 2023 Mac. All rights reserved.
//

import SwiftUI

struct AlbumListView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("My Albums")
                        .font(.largeTitle)
                        .bold()
                    ScrollView(.horizontal) {
                        HStack(spacing: 10) {
                            ForEach(albumlist, id: \.id) { album in
                                AlbumCard(album: album)
                            }
                        }.frame(height: 400)
                    }
                    Text("Top Albums")
                        .font(.largeTitle)
                        .bold()
                    VStack {
                        ForEach(albumlist, id: \.id) { album in
                            TopAlbumCard(album: album)
                        }
                    }
                } .padding()
            }.navigationBarTitle("My Albums")
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            AlbumListView()
        }
    }
}
