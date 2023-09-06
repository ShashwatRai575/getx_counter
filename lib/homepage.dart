import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './counter_cotroller.dart';

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