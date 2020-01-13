import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/laundry/schedule.dart';
import 'screens/laundry/enterDetails.dart';
import 'screens/laundry/clothTypes.dart';
import 'screens/paymentMethod.dart';
import 'screens/laundry/numberOfClothes.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'screens/homeSalon/GentHaircut/genthaircut.dart';
import 'screens/homeSalon/HairStyling/hairstyling.dart';
import 'screens/homeSalon/Makeup/makeup.dart';
import 'screens/homeSalon/Nails/nails.dart';
import 'screens/dispatch/scheduleDispatch.dart';
import 'screens/dispatch/Pickup/pickupdetails.dart';
import 'screens/Food/enterFoodDetails.dart';
import 'screens/Food/foodMenu.dart';
import 'screens/Food/FoodQuantity.dart';
import 'screens/Food/FoodSelection.dart';
import 'screens/HomeCleaning/homeCleaning.dart';
import 'screens/PostConstruction/postConstruction.dart';
import 'screens/homeSalon/typeOfHomeSalon.dart';
import 'components/Success.dart';
import 'screens/splash.dart';

void main() => runApp(MyApp());

//const color = const Color(0xff00ADEF);

class MyApp extends StatelessWidget {
  String title = 'Luna';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        fontFamily: 'Rubik',
        primaryColor: const Color(0xff00adef),
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => Splash(),
        '/home': (context) => MyHomePage(title: 'Luna'),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/schedule': (context) => Schedule(),
        '/enterDetails': (context) => EnterDetails(),
        '/clothTypes': (context) => ClothTypes(),
        '/pay': (context) => PaymentMethod(),
        '/numberofclothes': (context) => NumberOfClothes(),
        '/genthaircut': (context) => GentHaircut(title: 'GentHaircut'),
        '/nails': (context) => Nails(title: 'Nails'),
        '/makeup': (context) => Makeup(title: 'Makeup'),
        '/hairstyling': (context) => HairStyling(
              title: 'HairStyling',
            ),
        '/success': (context) => Success(),
        '/homeSalon': (context) => TypeOfHomeSalon(title: 'Home Salon'),
        '/foodmenu': (context) => FoodMenu(),
        '/foodQty': (context) => FoodQuantity(),
        '/foodselection': (context) => FoodSelection(),
        '/enterfooddetails': (context) => EnterFoodDetails(),
        '/homecleaning': (context) => HomeCleaning(),
        '/scheduledispatch': (context) => ScheduleDispatch(),
        '/postconstruction': (context) => PostConstruction(),
        '/pickupdetails': (context) => PickUpDetails() 
      },
      //    home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
