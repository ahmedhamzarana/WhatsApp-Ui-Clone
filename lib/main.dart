import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/utils/app_routes.dart';
import 'package:whatsapp/providers/splash_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MultiProvider(providers: [
    ChangeNotifierProvider(create: (context)=>SplashProvider())

  ], child: MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp App",
      initialRoute: AppRoutes.splashscreen,
      routes: AppRoutes.routes,
    );
  }
}
