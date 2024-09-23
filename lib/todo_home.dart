import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todo_final_project/todo_profile.dart';
import 'package:todo_final_project/taskmanagement_function.dart';
import 'package:todo_final_project/todo_function.dart';
import 'package:todo_final_project/SplashScreen.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
final TaskProvider _taskProvider = TaskProvider();
List<Taskmodule> _tasks = [];

@override
  void initState() {
    super.initState();
    _loadTasks();
  }

  Future<void> _loadTasks() async {
    final tasks = await _taskProvider.getTasks();
    setState(() {
      _tasks = tasks;
    });
  }

   void _addTask() async {
    final title = await _showTaskDialog(currentTitle: '1');
    if (title != null) {
      await _taskProvider.addTask(Taskmodule(title: title));
      _loadTasks();
    }
  }

   void _editTask(int index) async {
    final title = await _showTaskDialog(currentTitle: _tasks[index].title);
    if (title != null) {
      await _taskProvider.editTask(index, Taskmodule(title: title, isCompleted: _tasks[index].isCompleted));
      _loadTasks();
    }
  }

  Future <String?> _showTaskDialog ({required String currentTitle})async{
    String? title;
     return showDialog<String>(
      context: context,
      builder: (context){
        return AlertDialog(
          backgroundColor: Color.fromARGB(255, 203, 200, 203),
          // ignore: unnecessary_null_comparison
          title: Text(currentTitle == "1" ? 'Add Task' : 'Edit Task'),
          content: TextField(
            onChanged: (value){
              title=value;
            },
            decoration: const InputDecoration(hintText: 'Task Title'),
              // ignore: unnecessary_null_comparison
              controller: currentTitle == "1" ? null:TextEditingController(text: currentTitle),
          ),
           actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(title);
              },
              child: const Text('Save'),
            ),
          ],
        );
      }
     );
  }
  void _deleteTask(int index) async {
    await _taskProvider.deleteTask(index);
    _loadTasks();
  }
  @override
  Widget build(BuildContext context) {
    return 
    //  MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home:
      Scaffold(
        backgroundColor: Color.fromARGB(243, 239, 237, 237),
        appBar: AppBar(title: const Text("TASK UPDATION MODULE", 
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Color.fromARGB(255, 247, 248, 251)
        ),),
         backgroundColor: Color.fromRGBO(81, 96, 138, 1),
          elevation: 10,
          centerTitle: true,
          

          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),

          actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _addTask,
          ),
        ],
        ),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 139, 192, 219),
      child: ListView(children: [
        ListTile(
          title:const Text("Profile"),
          textColor: Color.fromARGB(255, 18, 17, 17),
          onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(),));

          },
        ),
         ListTile(
          title:const Text("Logout"),
          textColor: Color.fromARGB(255, 16, 15, 15),
          onTap: () {
            
            storeData(false);
            Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen(),));

            },
        )
      ],),
    ),
      
        body: Stack(
          children:<Widget> [
             Container(
              width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/graph.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),

        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            color: Colors.white.withOpacity(0.5),
          ),
        ),


           ListView.builder(
           itemCount: _tasks.length,
           itemBuilder: (context, index) {
          return ListTile(
            title: Text(_tasks[index].title),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () => _deleteTask(index),
            ),
            onTap: () => _editTask(index),
          );
        },
        ),
      // ),
          ]
        )
    );
  }
}