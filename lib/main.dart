import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hikayati_app/core/app_theme.dart';
import 'package:hikayati_app/features/Home/data/model/WebStoryMode.dart';
import 'package:hikayati_app/features/Settings/presintation/page/SettingPage.dart';
import 'package:hikayati_app/features/Story/date/model/StoryMediaModel.dart';
import 'package:hikayati_app/features/Story/date/model/accuracyModel.dart';
import 'package:hikayati_app/injection_container.dart' as object;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flame_audio/flame_audio.dart';
import 'core/util/database_helper.dart';
import 'features/Home/presintation/page/HomePage.dart';
import 'features/Regestrion/date/model/userMode.dart';
import 'features/Regestrion/presintation/page/SignupPage.dart';
import 'features/Home/data/model/StoryMode.dart';
import 'features/Settings/presintation/page/ChartPage.dart';
import 'features/Settings/presintation/page/lockPage.dart';
import 'features/introdection/presintation/page/IntroScreen.dart';
import 'features/introdection/presintation/page/Splach_screen.dart';
import 'features/introdection/presintation/page/onboardingOne.dart';
import 'package:flame_audio/flame_audio.dart';
DatabaseHelper db = new DatabaseHelper();
String carecters='';
String level='';
bool islogin=false;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  FlameAudio.bgm.initialize();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.immersiveSticky,
  );

  final prefs = await SharedPreferences.getInstance();
  islogin=await prefs.getBool('onbording')??false;
 carecters= await  prefs.getString('Carecters') ?? '';






  await object.init();
  await SystemChrome.setPreferredOrientations(
    [
     DeviceOrientation.landscapeLeft,
    //  DeviceOrientation.landscapeRight,
    ]
  );


  runApp( MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: AppTheme.primarySwatch,
      ),
      home:Splach_screen()

      //islogin ? HomePage():IntroScreen(),
    );
  }

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    //  var dd=db.insert(data:WebStoryModel(id: 1, cover_photo: 'cover_photo', story_order: 'story_order', updated_at: '2023-06-02T06:12:00.000000Z', author: 'author', level: 'level', required_stars: 'required_stars', name: 'name'), tableName: '"stories" ');
    // var dd1=db.insert(data:WebStoryModel(id: 3, cover_photo: 'cover_photo', story_order: 'story_order', updated_at: '2023-06-04T06:10:04.000000Z', author: 'author', level: 'level', required_stars: 'required_stars', name: 'name'), tableName: '"stories" ');
    // var dd2=db.insert(data:WebStoryModel(id: 2, cover_photo: 'cover_photo', story_order: 'story_order', updated_at: '2023-06-04T06:10:04.000000Z', author: 'author', level: 'level', required_stars: 'required_stars', name: 'name'), tableName: '"stories" ');



 //
 // var dd=   FlameAudio.bgm.play('bgm.mp3',volume: 100);

}
}

