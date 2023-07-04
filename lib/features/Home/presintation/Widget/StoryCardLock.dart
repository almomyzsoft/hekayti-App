import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hikayati_app/core/app_theme.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../core/util/ScreenUtil.dart';
import '../../../../core/util/common.dart';
import '../../../../dataProviders/network/data_source_url.dart';
import '../../../../gen/assets.gen.dart';

class StoryCardLock extends StatefulWidget {
  final name;
  String photo;
  final starts;
   StoryCardLock({Key? key,required this.name,required this.photo,required this.starts}) : super(key: key);

  @override
  State<StoryCardLock> createState() => _StoryCardLockState();
}

class _StoryCardLockState extends State<StoryCardLock> {
  ScreenUtil screenUtil = ScreenUtil();
var path;
  @override
  Widget build(BuildContext context) {
    screenUtil.init(context);

    return Stack(


      children: [

        Opacity(
          opacity: .7,
          child: Wrap(

            children: [
                Center(
                  child: Container(
                  width: screenUtil.screenWidth *.25,
                  height: screenUtil.screenHeight *.6,


                  decoration:
                  BoxDecoration(


                    image: DecorationImage(image: AssetImage(Assets.images.storyBG.path,),fit: BoxFit.contain,)

                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [

                       widget.starts == 1 ? Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [



                      Image.asset(Assets.images.start.path,width: 40,height: 40,),
                           Padding(
                             padding: const EdgeInsets.only(bottom: 20.0),
                             child: Image.asset(Assets.images.emptyStar.path,width: 40,height: 40),
                           ),
                           Image.asset(Assets.images.emptyStar.path,width: 40,height: 40),

                         ],
                       ):widget.starts ==2?
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [



                          Image.asset(Assets.images.start.path,width: 40,height: 40),
                           Padding(
                             padding: const EdgeInsets.only(bottom: 20.0),
                             child:Image.asset(Assets.images.start.path,width: 40,height: 40),
                           ),
                           Image.asset(Assets.images.emptyStar.path,width: 40,height: 40),

                         ],
                       ): widget.starts ==0 ? Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [



                           Image.asset(Assets.images.emptyStar.path,width: 40,height: 40),
                           Padding(
                             padding: const EdgeInsets.only(bottom: 20.0),
                             child: Image.asset(Assets.images.emptyStar.path,width: 40,height: 40),
                           ),
                           Image.asset(Assets.images.emptyStar.path,width: 40,height: 40),

                         ],
                       ):
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [



                           Image.asset(Assets.images.start.path,width: 40,height: 40),
                           Padding(
                             padding: const EdgeInsets.only(bottom: 20.0),
                             child:Image.asset(Assets.images.start.path,width: 40,height: 40),
                           ),
                          Image.asset(Assets.images.start.path,width: 40,height: 40),

                         ],
                       ),



                        Container(
                          height: screenUtil.screenHeight * .3,
                          width: screenUtil.screenWidth *.14,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    height: screenUtil.screenHeight * .3,
                                    width: screenUtil.screenWidth *.14,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.file( File('${widget.photo}')  ,fit: BoxFit.cover,),
                                      // child: Image.memory(
                                      //
                                      //   converToBase64(widget.photo.toString()
                                      //   ),
                                      //   fit: BoxFit.cover,
                                      //   ),
                                    ),
                                  ),


                            ]),
                            // child: Image.memory(
                            //
                            //   converToBase64(widget.photo.toString()
                            //   ),
                            //   fit: BoxFit.cover,
                            //   ),
                          ),
                        ),
                     SizedBox(height: 10,),
                     Text(widget.name,style: AppTheme.textTheme.headline5,)

                  ]),
                  ),
                ),
              ],
          ),
        ),
        Center(child: Icon(Icons.lock,color:
        Color(0xFF4B3A29),size: 50,)),

      ],
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  initpath();
  }
  initpath()async{
    var externalDirectoryPath = await getExternalStorageDirectory();
    path=  externalDirectoryPath!.path.toString();
  }
}
