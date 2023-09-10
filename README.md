# BRIEF DOCUMENTATION 


##  APP SETUP INSTRUCTIONS

**STEP ONE:**

Access the project repository, then clone it using the link provided below:


* [HNGX FIRST TASK](https://github.com/ioabdullahi/hngx_first_task)

**STEP TWO:**

Go to the root of the project and execute the get dependencies command in console to get the required dependencies: 

```
flutter pub get 
```

**STEP THREE**

Then you are to Execute the following command to run the app: 

```
flutter run
```



### Dependecy(Package) Used

* [WebView Flutter Plugin](https://pub.dev/packages/webview_flutter)

### Folder architecture
 core(default) folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- ios
|- lib
|- test
```

folder structure used in this project

```
lib/
|- src/
    |- constants/
    |- views/
```


### Constants & Business Logic

This directory contains all the constants as shown in the example below:

```
constants/
   |- constants.dart
```


### VIEWS

This directory contains all the UI view of this application. Each screen is located in a separate folder making it easy to combine group of files related to that particular screen. All the screen specific widgets were be placed in `views` directory as shown below:

```
src/
|- views/
   |- components/
      |- app_navigation.dart
   |- screens/
      |- home.dart
      |- github_webview.dart
```




### ROOT OF THE APPLICATION(MAIN)

This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.

```dart
import 'package:flutter/material.dart';
import 'src/views/screens/home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HNGX FIRST TASK',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      home: const HomeScreen(title: 'HNGX FIRST TASK'),
    );
  }
}
```

## CONCLUDING PART
Working on this task was a great adventure and knowledge filled, i tried fetching some details using webview_flutter_web but it wasnt working, but i am still trying to figure out a way out.
[See a Virtual version of the app](https://appetize.io/app/fh2bgjfuy533yj2yyokqzhbovq)

Thanks so much to the Zuri Team.
