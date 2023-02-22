import 'package:flutter/material.dart';
import 'package:test23/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:test23/src/utils/theme.dart';
import 'package:get/get.dart';


void main() => runApp(const App());

class App extends StatelessWidget{
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      //dark mode theme
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}



//
//
// class AppHome extends StatelessWidget{
//   const AppHome({Key? key})  : super(key: key);
//
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(title: const Text(".appable/"), leading: const Icon(Icons.ondemand_video)),
//       floatingActionButton: FloatingActionButton(child: const Icon(Icons.add_shopping_cart_outlined), onPressed: (){},),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: ListView(
//           children: [
//             Text("Heading",
//               style: Theme.of(context).textTheme.headline2,),
//             Text("Sub-heading",
//               style: Theme.of(context).textTheme.subtitle2,),
//             Text("Paragraph",
//               style: Theme.of(context).textTheme.bodyText1,),
//
//             ElevatedButton(onPressed: (){}, child: const Text("Elevated Button"),),
//             OutlinedButton(onPressed: (){}, child: const Text("Outlined Button"),),
//             const Padding(padding: EdgeInsets.all(10.0),
//               child: Image(image: AssetImage("assets/images/books.jpg")),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }