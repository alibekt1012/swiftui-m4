//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by Almat Alibekov on 12.01.2023.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        TabView {
            
            RecipeFeaturedView()
                .tabItem {
                    
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                        
                    }
                    
                }
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("Recipe List")
                    }
                }
        }
        .environmentObject(RecipeModel())
        
        
        
        
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
