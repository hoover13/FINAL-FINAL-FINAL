//
//  funfact2.swift
//  Jams story testing
//
//  Created by Jamar Morgan on 11/15/23.
//

import SwiftUI

struct funfact2: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    funfact2()
}
struct FunFactsView: View {
    /*#-code-walkthrough(FunFactsView.funFacts)*/
    var allFunFacts =
    [
        "Barbeque Sauce is disgusting",
        "Fall is the best season.",
        "Ketchup used to be sold as medicine.",
        "I bet you cant name who's picture is in the background",
        "You can't hum while you're pinching your nose",
        "Facebook has more users than many major populations",
        "The moon landing was staged",
        "You can major in wine at Cornell University",
        "A team of six women programmed the first digital computer",
        "Damian Lillard is being traded to the Milwaukee Bucks",
        "Playstation is better than Xbox",
        "Spring water is the best water",
    ]
    /*#-code-walkthrough(FunFactsView.funFacts)*/
    /*#-code-walkthrough(FunFactsView.stateVariable)*/
    @State private var funFact = ""
    /*#-code-walkthrough(FunFactsView.stateVariable)*/
    
    var body: some View {
        /*#-code-walkthrough(FunFactsView.color)*/
        ZStack {
            Image("TerranceHill")
                .resizable(capInsets: /*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/, resizingMode: /*@START_MENU_TOKEN@*/.stretch/*@END_MENU_TOKEN@*/)
                .scaledToFit()
            VStack {
                /*#-code-walkthrough(FunFactsView.color)*/
                Text("Fun Facts")
                    .font(.largeTitle)
                /*#-code-walkthrough(FunFactsView.textView)*/
                Text(funFact)
                    .font(.title)
                    .frame(maxWidth: 400, minHeight: 300)
                /*#-code-walkthrough(FunFactsView.textView)*/
                
                /*#-code-walkthrough(FunFactsView.button)*/
                Button("Show Random Fact") {
                    funFact = allFunFacts.randomElement() ?? "No Fun."
                }
                /*#-code-walkthrough(FunFactsView.button)*/
                /*#-code-walkthrough(FunFactsView.button.modifiers)*/
                .padding()
                .foregroundColor(.blue)

               

                /*#-code-walkthrough(FunFactsView.button.modifiers)*/
            }
            .padding()
        }
        
    }
}

struct FunFactsView_Previews: PreviewProvider {
    static var previews: some View {
        FunFactsView()
    }
}
