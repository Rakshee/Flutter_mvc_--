import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvp_st/Controller/controller.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  final Controller _controller=Controller();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('MVC App'),
          centerTitle: true,
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _controller != null?'${_controller.counter}':"0",
                style: TextStyle(
                fontSize: 25,
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(onPressed: (){
                    setState(() {
                      _controller.increment();
                    });
                  },child: Icon(Icons.add)),
                  SizedBox(width: 25),
                  FloatingActionButton(onPressed: (){
                    setState(() {
                      _controller.decrement();
                    });
                  },child: Icon(Icons.remove)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
