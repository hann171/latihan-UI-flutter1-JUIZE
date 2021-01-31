import 'package:flutter/material.dart';
import 'package:juize/theme.dart';

class RecipeTile extends StatelessWidget {
  
  final String imageUrl;
  final String title;
  final double value;
  final bool isLocked;

  RecipeTile({
    this.imageUrl, 
    this.title, 
    this.value, 
    this.isLocked
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 65,
        width: 65,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(imageUrl))),
      ),
      title: Text(
        title,
        style: onboardSmallTextStyle.copyWith(fontSize: 16),
      ),
      subtitle: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: LinearProgressIndicator(
          backgroundColor: Color(0xffECEEF5),
          valueColor: AlwaysStoppedAnimation(Color(0xffEEA729)),
          value: 0.7,
          minHeight: 6.5,
        ),
      ),
      trailing: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(
              isLocked ? 'assets/btn_locked' : 'assets/btn_play',
            ),
          ),
        ),
      ),
    );
  }
}
