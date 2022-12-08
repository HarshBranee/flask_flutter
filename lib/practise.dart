// import 'package:firebase_to_do_app/popup.dart';
// import 'package:firebase_to_do_app/taskmodel.dart';
// import 'package:firebase_to_do_app/todomodel.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepOrangeAccent,
//       body: Stack(
//         alignment: Alignment.center,
//         children: <Widget>[
//           Container(
//             margin: const EdgeInsets.only(left: 50),
//             width: 300,
//             height: 500,
//             child: Image.asset(
//               'assets/task.png',
//               fit: BoxFit.contain,
//             ),
//           ),
//           const Positioned(
//             top: 40,
//             left: 20,
//             child: Text(
//               "Todos",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 40,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           DraggableScrollableSheet(
//             maxChildSize: 0.85, // to stop scrollsheet at particular point

//             builder: (context, scrollController) {
//               return Stack(
//                   clipBehavior: Clip
//                       .none, //use in stack to overflow the widget outside its boundary
//                   children: <Widget>[
//                     Container(
//                       padding: const EdgeInsets.all(10),
//                       decoration: const BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(40),
//                               topLeft: Radius.circular(40))),
//                       child: Consumer<TodoModel>(
//                         builder: (context, todo, child) => ListView.builder(
//                           itemBuilder: (context, index) {
//                             return ListTile(
//                                 onTap: () {},
//                                 onLongPress: () {
//                                   Provider.of<TodoModel>(context, listen: false)
//                                       .removefromList(todo.taskList[index]);
//                                 },
//                                 title: Text(
//                                   todo.taskList[index].title,
//                                   style: TextStyle(
//                                       color: Colors.grey[900],
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 subtitle: Text(
//                                   todo.taskList[index].detail,
//                                   style: TextStyle(
//                                       color: Colors.grey[700], fontSize: 20),
//                                 ),
//                                 trailing: const Icon(
//                                   Icons.check_circle,
//                                   color: Colors.greenAccent,
//                                 ));
//                           },
//                           controller: scrollController,
//                           itemCount: todo.taskList.length,
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       top: -20,
//                       right: 30,
//                       child: FloatingActionButton(
//                         onPressed: () {
//                           createAlertDialog(context).then((value) =>
//                               Provider.of<TodoModel>(context, listen: false)
//                                   .addTaskInList(value!));
//                         },
//                         backgroundColor: Colors.blueAccent,
//                         child: const Icon(
//                           Icons.add,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ]);
//             },
//           )
//         ],
//       ),
//     );
//   }
// }