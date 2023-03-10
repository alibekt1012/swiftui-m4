//
//  RecipeFeaturedView.swift
//  Recipe List App
//
//  Created by Almat Alibekov on 16.01.2023.
//

import SwiftUI

struct RecipeFeaturedView: View {

    @EnvironmentObject var model: RecipeModel
    
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            
            Text("Featured Recipes")
                .padding(.leading)
                .padding(.top, 40)
                .font(.largeTitle)
                .bold()
            
            GeometryReader { geo in
                
                
                
                TabView {
                    // Loop through each recipes
                    
                    ForEach (0..<model.recipes.count) {index in
                        
                        if model.recipes[index].featured == true {
                            
                            // Recipe card
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.white)
                                
                                VStack(spacing: 0) {
                                    Image(model.recipes[index].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                    Text(model.recipes[index].name)
                                        .padding(5)
                                }
                                
                            }
                            .frame(width: geo.size.width-40, height: geo.size.height - 100, alignment: .center)
                            .cornerRadius(15)
                            .shadow(color: Color(.sRGB,red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -5, y: 5)
                        }
                        
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
                
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Preparation Time:")
                    .font(.headline)
                Text("1 hour")
                
                Text("Highlights")
                    .font(.headline)
                Text("Healthy, Hearty")
                     
            }
            .padding([.leading, .bottom])
        }
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView().environmentObject(RecipeModel())
    }
}
