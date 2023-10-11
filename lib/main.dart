import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Collection Assignment  => kindly press the button to know the answers'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 14,),
          TextButton(
            onPressed: () {
              print('Executing....');
            },
            child: const Text('Answers'),
          ),
          const SizedBox(height: 14,),
          TextButton(
            onPressed: () {
              List ans = [1,'sara', 2.0, true];
              //add items
              ans.add(50);
              //remove
              ans.remove(2.0);
              //clear
              print(ans);
              print('A) List');
            },
            child: const Text('Question 116'),
          ),
          const SizedBox(height: 14,),
          TextButton(
            onPressed: () {
              List ans = [1,'sara', 2.0, true];
              var value=true;
              //add items
              ans.add(50);
              //remove
              ans.remove(2.0);
              //clear
              print(ans);
              ans.removeWhere((element) => element==value,);
              print(ans);
              print('C) list.removeWhere((item) => item == value)');
            },
            child: const Text('Question 117'),
          ),
          const SizedBox(height: 14,),
          TextButton(
            onPressed: () {
              Map value={
                'name':'sara',
                'age': 20,
                'gender':'female',
                'isMarried':null,
                null :'its null key'
              };
              //print keys
              print(value['isMarried']);//null
              print(value[null]);//null key
              print('A) Map');
            },
            child: const Text('Question 118'),
          ),
          const SizedBox(height: 14,),
          TextButton(
            onPressed: () {
              Set ans = {1,2,3,4,2,1,5};
              print(ans);//no duplicates are printed...
              print('B) Set');
            },
            child: const Text('Question 119'),
          ),
          const SizedBox(height: 14,),
          TextButton(
            onPressed: () {
              List l1 =[1,2,3];
              List l2=['sara','technospace'];
              //addAll to add list
              l1.addAll(l2);
              print(l1);
              print('D) list1.addAll(list2)');
            },
            child: const Text('Question 120'),
          ),
          const SizedBox(height: 14,),
        ],
      ),
    ));
  }
}
