import 'package:flutter/material.dart';
import 'package:contador/src/routes/routes.dart';
import 'package:contador/src/pages/home_page_copy.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  //clase para llamar extendiendo de class name extends StatelessWidget
  @override // sobreescribir el metodo build
  Widget build(BuildContext context) {
    //a build mandamos el context
    // return MaterialApp(home: Center(child: HomePage()));
    return MaterialApp(
      title: 'componenteas',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English, no country code
        const Locale('es', 'ES'), // Hebrew, no country code
        // ... other locales the app supports
      ],
//creamos nuetras rutas par la navegacion ROUTES
      initialRoute: '/',
      routes: getAppRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('ruta llamada ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => HomePageCopy());
      },
    );
  }
}
