// import 'dart:io';
//
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:i_baza/core/adater/hive_tye_adater.dart';
// import 'package:i_baza/core/database/objectbox.dart';
// import 'package:i_baza/core/ingector/hive_repo.dart';
// import 'package:i_baza/core/ingector/setup_locator.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:open_file/open_file.dart';
// import 'package:share_plus/share_plus.dart';
//
// import 'core/ingector/storeg_repo.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   registerAdapters();
//   await StorageRepo.getInstance();
//   await initHive();
//   await HiveSingleton.getInstance();
//   await LocalDatabase.getInstance();
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: MyHomePage(
//         title: 'Flutter Demo Home Page',
//       ),
//       //const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   File? avatar;
//
//   Future<void> pickAvatar() async {
//     ImagePicker imagePicker = ImagePicker();
//     final file = await imagePicker.pickImage(source: ImageSource.camera);
//
//     if (file != null) {
//       setState(() {
//         avatar = File.fromUri(Uri.file(file!.path));
//       });
//     }
//   }
//
//   List<File> files = [];
//
//   Future<void> pickFile() async {
//     final result = await FilePicker.platform.pickFiles();
//
//     if (result != null && result.files.isNotEmpty) {
//       result.files.map((file) => files.add(File(file.path ?? ""))).toList();
//       setState(() {});
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text('plugins'),
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: 20,
//           ),
//           Align(
//             child: Container(
//               width: 150,
//               height: 150,
//               clipBehavior: Clip.hardEdge,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 border: Border.all(width: 1, color: Colors.grey),
//               ),
//               child: avatar == null
//                   ? Icon(
//                       Icons.person,
//                       size: 100,
//                       color: Colors.grey,
//                     )
//                   : Image.file(
//                       avatar!,
//                       fit: BoxFit.cover,
//                     ),
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Wrap(
//             spacing: 20,
//             children: List.generate(
//               files.length,
//               (index) => GestureDetector(
//                 onTap: () async{
//                   await OpenFile.open(files[index].path);
//                 },
//                 onLongPress: () async{
//                   await Share.share("Hi! my name is Mahmudxon");
//                 },
//                 child: Container(
//                   padding: EdgeInsets.all(10),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.brown,
//                   ),
//                   child: Text(
//                     files[index].path.split(Platform.pathSeparator).last,
//                     style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           FloatingActionButton(
//             onPressed: () => pickAvatar(),
//             tooltip: 'pickAvatar',
//             child: const Icon(Icons.add),
//           ),
//           FloatingActionButton(
//             onPressed: pickFile,
//             tooltip: 'pickAvatar',
//             child: const Icon(Icons.file_download),
//           ),
//         ],
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
import 'package:flutter/material.dart';


import 'features/search/search2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Search2(),
    );
  }
}
