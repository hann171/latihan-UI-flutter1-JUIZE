import 'package:flutter/material.dart';
import 'package:juize/theme.dart';
import 'package:juize/widget/recipeTile.dart';

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/video_play.png'
                )
              )
            ),
          ),
          ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 250,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 35,),

                    Text('Manggo Banana Smoothies', style: recipeTextStyle.copyWith(
                      fontSize: 20
                    ),),

                    SizedBox(height: 6,),

                    Text('How to start up your day with Juize ', style: onboardSmallTextStyle.copyWith(
                      fontSize: 14,
                      color: greyColor,
                    ),),

                    SizedBox(height: 30,),

                    Text('# Preparing', style: onboardSmallTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),),
                    RecipeTile(
                      imageUrl: 'assets/icon.png',
                      title: 'Ideation',
                      value: 0.7,
                      isLocked: false
                    ),
                    
                  ],
                ),
              )
            ],
          )
        ] 
      ),
    );
  }
}
