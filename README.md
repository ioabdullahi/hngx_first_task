# HNGX STAGE ONE 


## How to Use 

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/EjiroAv/hgnx-stage-one
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```

**Step 3:**

Execute the following command to run the app: 

```
flutter run
```



### Libraries & Tools Used

* [WebView Flutter Plugin](https://pub.dev/packages/webview_flutter)

### Folder Structure
 core folder structure which flutter provides.

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


### Constants

This directory contains all the application level constants. A separate file is created for each type as shown in example below:

```
constants/
   |- strings/
      |- urls.dart
```


### UI

This directory contains all the ui of your application. Each screen is located in a separate folder making it easy to combine group of files related to that particular screen. All the screen specific widgets were be placed in `views` directory as shown in the example below:

```
src/
|- view/
   |- components/
      |- navigation_controls.dart
   |- screens/
      |- main_page.dart
      |- web_view.dart
```




### Main

This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.

```dart
import 'package:flutter/material.dart';

import 'src/views/screens/main_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HNGX STAGE ONE',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      home: const MainPage(title: 'HNGX STAGE ONE'),
    );
  }
}
```


## Conclusion

It was a fun  project overall. | I tried to get the information from the slack Api but I couldn't get it done but I will try again sometime later
[Demo the app](https://appetize.io/app/hq5xvlcvx3sk5jp37gwco7w55y)