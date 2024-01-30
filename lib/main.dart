import 'package:flutter/material.dart';
import 'package:i_baza/core/adater/hive_tye_adater.dart';
import 'package:i_baza/core/database/objectbox.dart';
import 'package:i_baza/core/ingector/hive_repo.dart';
import 'package:i_baza/core/ingector/setup_locator.dart';
import 'package:i_baza/features/authetication/data/models/authenticated_user.dart';
import 'package:i_baza/uy_ishi/splash_screen.dart';

import 'core/ingector/storeg_repo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  registerAdapters();
  await StorageRepo.getInstance();
  await initHive();
  await HiveSingleton.getInstance();
  await LocalDatabase.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      //const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() async {
    await StorageRepo.setAuthStatus(true);
    await box?.put('is_hive', 'Mahmudxon');
    await box?.put(
      'auth_user',
      AuthenticatedUserModel(
        id: "62376534",
        firstName: "Mahmudxon",
        lastName: "Abdumutalibov",
      ),
    );
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'auth_status: ${StorageRepo.getAuthStatus()}',
            ),
            Text(
              'Is Hive: ${box?.get('is_hive', defaultValue: 'No Hive')}',
            ),
            Text(
              '${box?.get('auth_user')}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
