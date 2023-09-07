import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './counter_cotroller.dart';
import 'newPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        title: const Text('Counter App',
        style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: 
        
          
          Column(
            children: [
              Obx(
                () =>  Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height*0.1,
                    child: Column(
                        children: <Widget>[
                          const Text('You have pressed this button this many time'),
                          Text(
                            '${controller.count.value}',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      
                    ),
                  ),
                ),
              ),

             const Padding(padding: EdgeInsets.all(30)),

             Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height*0.2,
          child: Column(
            children: <Widget>[
              
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 18), backgroundColor: Colors.teal,
                  ),
                  onPressed: () {
                Get.snackbar('GetX Snackbar', 'Yay! Awesome GetX Snackbar',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.tealAccent);
                  },
                  child: const Text('Show Snackbar',
                  style: TextStyle(
                    color: Colors.white
                  ),)),
           ElevatedButton(
            style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 18), backgroundColor: Colors.teal,
            ),
            onPressed: () {
          Get.defaultDialog(
              title: 'GetX Alert',
              middleText: 'Simple GetX alert',
              textConfirm: 'Okay',
              confirmTextColor: Colors.white,
              textCancel: 'Cancel');
            },
            child: const Text('Show AlertDialog',
            style: TextStyle(
              color: Colors.white
            ),
            )),
           
            ]
          ),
        )
),

Padding(
  padding: const EdgeInsets.all(12.0),
  child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20), backgroundColor: Colors.teal,
        minimumSize: const Size.fromHeight(40),
      ),
      child: const Row(
        children: [
          Spacer(),
          Text("Go to next screen",
          style: TextStyle(
            color: Colors.white
          ),),
          SizedBox(
            width: 20,
          ),
          Expanded(
              child: Icon(
            Icons.arrow_right_alt,
            size: 40,
          ))
        ],
      ),
      onPressed: () {
        Get.to(() => const SecondPage());
      }),
),

            ],
          ),
          
        
      
      floatingActionButton: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         
          FloatingActionButton(
            onPressed: controller.increment,
            tooltip: 'Increment',
            backgroundColor: Colors.blueGrey,
            child: const Icon(Icons.add,
            color:Colors.white,),
            
          ),
     
           FloatingActionButton(
            onPressed: controller.increment,
            tooltip: 'Decrement',
            backgroundColor: Colors.blueGrey,
            child: const Icon(Icons.remove,
            color:Colors.white,),
            
          ),
        ],
      ),
      
    );
  }
}