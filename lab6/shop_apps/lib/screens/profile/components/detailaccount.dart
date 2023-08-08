import 'package:flutter/material.dart';
import 'package:shop_apps/constants.dart';

class Detailaccount extends StatelessWidget {
  const Detailaccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage("assets/images/hime.jpg"),
            ),
          ),
          
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 60, 0, 0),
                    child: Text(
                      'NAME:',
                      style: MyConstant().h1Style(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(55.0, 10, 0, 0),
                    child: Text(
                      'THANACHAN RUANPAKPOOM ',
                      style: MyConstant().h25Style(),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 20, 0, 0),
                    child: Text(
                      'Email:',
                      style: MyConstant().h1Style(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(75.0, 10, 0, 0),
                    child: Text(
                      'Reikamasaka@gmail.com ',
                      style: MyConstant().h25Style(),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.fromLTRB(160.0, 40.0, 0.0, 0.0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFFF7643),
                        padding: const EdgeInsets.all(16.0),
                        primary: MyConstant.normal,
                        textStyle: const TextStyle(fontSize: 24),
                      ),
                      onPressed: () {
                        int count = 0;
                        Navigator.of(context).popUntil((_) => count++ >= 2);
                      },
                      child: const Text('Save'),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
