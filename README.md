

# SquadLight-Flutter
This is the frontend part of our group project, SquadLight, that is a mobile app to be used by a group of friends going out on a night out and want to ensure everyones safety throughout the night. 
One of the main features of the app is that when a member of your group gets too far away from the average coordinates of the group, the app will notify other users and switch to an emergency mode chat, which is clearer and has larger text than the normal, everything is fine, group chat.
The location data is pinged at set intervals and will update markers on the map to show they general whereabouts of the group members, this means that if you can not access your phone for any reason, or if you are being lead somewhere while under the influence, other members of the group know your location and can easily get to you and help you out.

The repo for the backend can be found here:\
[GitHub - SamAshurst/SquadLight-Node](https://github.com/SamAshurst/SquadLight-Node)

This app was created by the following:
 [Sam Ashurst · GitHub](https://github.com/SamAshurst) \
 [Dan Routledge · GitHub](https://github.com/Root-2) \
 [Matt Jones · GitHub](https://github.com/mjonesdev) \
 [Kieron Day · GitHub](https://github.com/kieron-day) \
 [Zsolt Kallai · GitHub](https://github.com/kllzslt) 

### Flutter
The frontend part of this mobile app is made by using Flutter and Dart, you can install the Flutter SDK here:\
https://docs.flutter.dev/get-started/install \
This will also install the Dart SDK as well.

If you already have Flutter and Dart install, the minimum versions needed to run this project is:\
Flutter: 2.10.0\
Dart: 2.16.0

### Run This App Locally
To clone this app into Android Studio:
* Open Android Studio and click `File` -> `New` -> `Project from Version Control`
* Paste `https://github.com/Root-2/SquadLight-Flutter.git` into the `URL` box and click `Clone`
* To install dependencies enter `flutter pub get` in the terminal
* The emulated version can be run using `flutter run`

If you are using VS Code:
* Clone the repository through the command line with `git clone https://github.com/Root-2/SquadLight-Flutter.git`
* Install the dependencies through the command line with `flutter pub get` 
* The emulated version can be run with `flutter run`
