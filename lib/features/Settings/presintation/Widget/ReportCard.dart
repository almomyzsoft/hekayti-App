import 'package:flutter/material.dart';

import '../../../../core/app_theme.dart';
import '../../../../core/util/ScreenUtil.dart';
import '../../../../gen/assets.gen.dart';

class ReportCard extends StatefulWidget {
  String name;
  String cover_photo;
  int stars;
  String percentage;
   ReportCard({Key? key, required this.name, required this.cover_photo, required this.stars, required this.percentage}) : super(key: key);

  @override
  State<ReportCard> createState() => _ReportCardState();
}

class _ReportCardState extends State<ReportCard> {
  @override
  ScreenUtil screenUtil=ScreenUtil();

  Widget build(BuildContext context) {
    screenUtil.init(context);

    return Card(
      margin: EdgeInsets.only(right: 40,left: 40,top: 30),
      shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25))),
      elevation: 10,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: AppTheme.primaryColor,width: 2)
        ),
width: screenUtil.screenWidth *.6,
 height: screenUtil.screenHeight *.2,
          child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset(Assets.images.story1.path)),
          Text(widget.name,style:AppTheme.textTheme.headline3 ,textDirection: TextDirection.rtl,textAlign: TextAlign.right),

         widget.stars ==0?Row(children: [
           Image.asset(Assets.images.emptyStar.path,width: 40,height: 40,fit: BoxFit.fill),
           Image.asset(Assets.images.emptyStar.path,width: 40,height: 40,fit: BoxFit.fill),
           Image.asset(Assets.images.emptyStar.path,width: 40,height: 40,fit: BoxFit.fill),


         ],): widget.stars ==1?
         Row(children: [
           Image.asset(Assets.images.start.path,width: 40,height: 40,fit: BoxFit.fill),
           Image.asset(Assets.images.emptyStar.path,width: 40,height: 40,fit: BoxFit.fill),
           Image.asset(Assets.images.emptyStar.path,width: 40,height: 40,fit: BoxFit.fill),


         ],):widget.stars ==2?Row(children: [
            Image.asset(Assets.images.start.path,width: 40,height: 40,fit: BoxFit.fill),
            Image.asset(Assets.images.start.path,width: 40,height: 40,fit: BoxFit.fill),
            Image.asset(Assets.images.emptyStar.path,width: 40,height: 40,fit: BoxFit.fill),


          ],):
          Row(children: [
            Image.asset(Assets.images.start.path,width: 40,height: 40,fit: BoxFit.fill),
            Image.asset(Assets.images.start.path,width: 40,height: 40,fit: BoxFit.fill),
            Image.asset(Assets.images.start.path,width: 40,height: 40,fit: BoxFit.fill),


          ],),
          Text(widget.percentage+'%',style:AppTheme.textTheme.headline3 ,textDirection: TextDirection.rtl,textAlign: TextAlign.right),


        ],
      )),
    );
  }
}
