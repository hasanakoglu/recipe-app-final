//
//  VideoModel.swift
//  RecipeApp
//
//  Created by Hasan on 19/02/2018.
//  Copyright © 2018 hasanakoglu. All rights reserved.
//

import UIKit

class VideoModel: NSObject {
    
    //returns this class type
    func getVideos() -> [Video]{
        
        var videos = [Video]() //empty video array object creating a new instance of the class video. so everytime you use videos, you are using the Video array

        // create a video object
        let video1 = Video()
    
        
        //assign properties
        video1.videoId = "QVkGFz0UFso"
        video1.videoImage = UIImage(named: "image1")
        video1.videoTitle = "Superfood brownies"
        video1.cookingTime = "⏱ Cooking Time: 50 Minutes"
        video1.videoDescription = "⏱ Cooking Time: 50 Minutes"
        video1.ingredients = ["1 & 1/2 cups/200g Dairy-Free Dark Chocolate","1 & 1/2 cups/170g Self Raising flour","1 & 1/4 cups/180 g Light Brown Sugar", "3 Tbsp Cocoa Powder", "Pinch Sea Salt.", "½ cup of dark chocolate chips", "1 cup Dairy Free Milk", "2 cup sunflower oil"  ]
        video1.directions = ["Preheat the oven to 180, gas mark 4","Grease and line square tin","In a large bowl add the dry ingredients and mixed until well combined","Then, add oil, chocolate chips and milk to the bowl and mix well.", "Pour mixture into the prepared tin and sprinkle over chocolate chips and bake for 25-30 minutes.","Allow to cool before removing from the tin spread the chocolate spread on top of the brownie. And cut into rectangles.","For best results , eat on day of baking"]
        //append it into the videos array
        videos.append(video1)
        
        // create a video object
        let video2 = Video()
        
        //assign properties

        video2.videoImage = UIImage(named: "image2")
        video2.videoTitle = "Creamy Chia Seed Pudding"
        video2.cookingTime = "⏱ Cooking Time: Overnight prep"
        video2.videoDescription = "⏱ Cooking Time:  Overnight prep"
        video2.ingredients = ["200ml of Dairy-Free Milk","8 tablespoons of Chia Seeds", "1 tablespoon of Raspberry Coulis", "1/4 teaspoon of Maple Syrup."]
        video2.directions = ["In a large bowl, add in the dairy-free milk, chia seeds, raspberry coulis and maple syrup.","Stir till well incorporated  and leave to jellify & thicken.","This will take about 1 hour or you can leave it overnight.","Spoon into a serving glass, top off with more raspberry coulis,maple syrup a sprinkle of desiccated coconut and berries."]
        
        //append it into the videos array
        videos.append(video2)
        
        // create a video object
        let video3 = Video()
        
        //assign properties
//        video3.videoId = "seSjWWtqmbY"
        video3.videoImage = UIImage(named: "image3")
        video3.videoTitle = "Super Fluffy Oreo Pancakes"
        video3.videoDescription = "⏱ Cooking Time: 45 Minutes"
        video3.cookingTime = "⏱ Cooking Time: 45 Minutes"
        video3.ingredients = ["2 cups of Flour", "2 TBSP Baking Powder", "2 TBSP Sugar","1/2 tsp Vanilla","5 Oreo Biscuits","Dash of freshly grated nutmeg (1/4 tsp if using ground)","Pinch of salt","1 1/2 cups Plant Based Milk","1 cup soaked cashew nuts","2 TBS Vanilla","1/2 cup maple syrup"]
        video3.directions = ["Place the Oreo in a blender and blend till it's a like sand like look and texture . Add all the dry ingredients and Oreo mixture to a large bowl and whisk till combined","Add in the milk and mix until there are no dry pockets in the batter","There will be some lumps since it's a thick batter, but do not over mix !!! (otherwise the pancakes will turn out  gummy instead of soft and fluffy (if you don't want a thick batter you add milk until you get your desired thin batter.)","To make the pancakes, ladle onto a non stick pan or add a knob of butter to the pan.","After that spread the batter evenly into a pancake shape with the ladle.  Once the pancakes start to bubble and are golden brown on the bottom, flip and cook for another 1-2 minutes on the other side","CASHEW CREAM", "Soak cashew nuts overnight in water or boil for a hour. Place all ingredients in a high speed blender. Blend till the mixture is well combined", "After that place of the cashew cream on top of the pancakes and decorate with some Oreos"]

        //append it into the videos array
        videos.append(video3)
        
        // create a video object
        let video4 = Video()
        
        //assign properties
//        video4.videoId = "Xt01zXWPzUg"
        video4.videoImage = UIImage(named: "image4")
        video4.videoTitle = "Dashing Vegan Doughnuts"
        video4.videoDescription = "⏱ Cooking Time: 45 Minutes"
        video4.cookingTime = "⏱ Cooking Time: 45 Minutes"
        video4.ingredients = ["For 12 doughnuts", "50 g (¼ cup) Vegan Margarine", "120 mL (½ cup) Soy Milk","2 tablespoons Sunflower oil, plus extra for frying", "250 g (2 cups) Plain Flour", "100 g (½ cup) Caster Sugar","1 teaspoon Baking Powder","½ teaspoon Salt"]
        video4.directions = ["Gently melt the butter over a low-medium heat. Add milk and 2 tablespoons of sunflower oil and mix together.","Once combined, take off the heat and set aside.","In a separate bowl, add  the flour, half of the sugar, baking powder and salt.","Make a well in the center and pour in the butter mixture. Combine slowly until a thick dough forms.","Using your hands, roll dough into little flat balls and with your thumb, press a hole in the center of each doughnut. (tips add flour your hands to avoid getting sticky!)","Heat up oil in a pan.","Gently lay the doughnuts into the oil using a spatula. Fry for about 3-5 minutes on each side, until golden brown.","Transfer the doughnuts onto some tissue paper to soak up any excess oil. Decorate and have fun with it."]

        //append it into the videos array
        videos.append(video4)
        
        // create a video object
        let video5 = Video()
        
        //assign properties
//        video5.videoId = "oktwiYu4kv8"
        video5.videoImage = UIImage(named: "image5")
        video5.videoTitle = "Crêpes Au chocolat végétarien"
        video5.videoDescription = "⏱ Cooking Time: 25 Minutes"
        video5.cookingTime = "⏱ Cooking Time: 25 Minutes"
        video5.ingredients = ["For 16 crepes", "For the vegan chocolate crepes", "1/4 teaspoon of Maple Syrup.","2 cups (240g) all-purpose flour","½ cup (50g) cocoa powder, unsweetened","1 pinch salt","1 cup (240 ml) non-dairy milk","1½ cup (360 ml) water","2 Tbsp vegetable oil","¼ cup (60 ml) agave or maple syrup"]
        video5.directions = ["In a large bowl, combine all the ingredients.","Mix with an electric mixer on low speed until no lumps remain.","Let it sit for about 30 minutes.","Heat a drop of vegetable oil in small skillet over medium high heat.","Pour the batter into the center of the hot skillet, letting it spread outward to create a thin layer of crepe.","Cook for about 1 minute","Then flip and cook for a few seconds only","Repeat with the remaining batter.", "Serve the chocolate crepes with the caramel sauce and enjoy!",""]

        //append it into the videos array
        videos.append(video5)
        
        // create a video object
        let video6 = Video()
        
        //assign properties
//        video6.videoId = "w7g7cd_k_j4"
        video6.videoImage = UIImage(named: "image6")
        video6.videoTitle = "Seriously Chocolatey & Hazelnut Cookies"
        video6.videoDescription = "⏱ Cooking Time: 45 Minutes"
        video6.cookingTime = "⏱ Cooking Time: 45 Minutes"
        video6.ingredients = ["200g skinless Hazelnuts", "2 tbsp. Cacao Powder", "2 tbsp  Maple Syrup ","2 tbsp. Coconut nut oil at room temperature","1 tsp. Baking powder","50g dark Chocolate melted","25g chopped Hazelnuts (roasted are better here)"]
        video6.directions = ["Preheat oven 180°C. Start by pulsing the hazelnuts into a flour( similar consistency of ground almond so it doesn’t have to be too fine).","Pour into a mixing bowl, add the cacao powder and baking agent and combine.","Next using your hands work in the coconut oil and honey until a firm dough is created.","Taking sections, spoon 1 tbsp onto a lined baking tray and press flat (1 cm in height).","Place in the oven for 10 minutes, the cookies will spread a little and brown and will NOT be firm so don’t try lift them from the tray.","Remove from the oven and let sit for 30-45 minutes this is when the cookies will set and develop a delicious crunch.", "Once cooled, drizzle in the melted chocolate and sprinkle with the chopped hazelnut"]
        
        //append it into the videos array
        videos.append(video6)
        
        // create a video object
        let video7 = Video()
        
        //assign properties
//        video7.videoId = "cbXTXogEYDk"
        video7.videoImage = UIImage(named: "image7")
        video7.videoTitle = "Lemon Drizzle Cake"
        video7.videoDescription = "⏱ Cooking Time: 2h 15 minutes"
        video7.cookingTime = "⏱ Cooking Time: 2h 15 mins"
        video7.ingredients = ["x2 cups Soya Yogurt", "x2 tsp lemon juice ", "300g Caster Sugar","2/3 cup Sunflower Oil","360g Plain Flour","1 tsp lemon flavouring","2 tsp  Malibu rum (optional)","1 tsp Salt","1 tsp Bicarbonate of Soda", "1 1/2 tsp Baking Powder","LEMIN DRIZZLE INGREDIENTS","2tbsp lemon juice","3 tsp icing sugar","VEGAN BUTTERCREAM INGREDIENTS","200g Soya/Sunflower butter ","660g Icing Sugar","1/2tsp lemon flavouring","Water"]
        video7.directions = ["In a bowl add the soya yogurt and lemon juice and set aside for 5mins.This will act as buttermilk and the egg replacer","In a medium sized mixing bowl add oil, lemon flavouring and sugar and mix till everything is well incorporated.","After add the soya yogurt mixture,Malibu rum, Bicarbonate of Soda, baking powder , salt and plain flour to the mix","Place the mixture in the logged shaped cake tin and place foil on top","Bake for 25-30 minutes. Gas mark 4 or 180c. During the last ten minutes take the foil off and place the cake back into the oven to bake","In a small bowl add lemon juice and icing sugar and set aside until the cake is ready","Once done drizzle on the lemon drizzle on the cake and leave the cake to cool for 2 hours","In a medium sized bowl add the butter, lemon flavouring, sugar and mix well. add water teaspoons of water if needed","Lastly spread the buttercream around the cake and decorate"]
        
        //append it into the videos array
        videos.append(video7)
        
        // create a video object
//        let video8 = Video()
//
//        //assign properties
//        video8.videoId = "Hasyum2JTRI"
//        video8.videoTitle = "Tropical Coconut Cream Frosting."
//        video8.videoDescription = "⏱ Cooking Time: 20 Minutes"
//        video8.cookingTime = "⏱ Cooking Time: 20 Minutes"
//        video8.ingredients = ["1 cup full fat Coconut milk"," 1 tbsp Malibu "," 1 cup Agave Nectar or Maple Syrup"," pinch sea salt","5 teaspoons Cornflour","1 tablespoon Water","1¼ cup Coconut oil"]
//        video8.directions = ["In a medium saucepan, heat coconut milk, agave and salt, simmer for 10 minutes"," In a small bowl, combine arrowroot and water to form a smooth paste","Pour arrowroot mixture into saucepan","Whisk vigorously to combine, then bring to a boil, briefly, until shiny"," Remove pot from heat and very gradually blend in coconut oil with a hand blender","Allow pot to cool for 10 minutes","Place pot in refrigerator for 45-120 minutes, until frosting solidifies and turns white","Remove from refrigerator and blend again with a hand blender, until fluffy"]
//
//        //append it into the videos array
//        videos.append(video8)
        
        // return the array to the caller
        return videos
    }

}
