import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const primaryColor = Colors.lightBlue;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mini Project',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      //theme: ThemeData(primaryColor: primaryColor),
      home: Portfolio(),
    );
  }
}

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Portfolio'),
      ),
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 38,
                        backgroundColor: MyApp.primaryColor,
                        child: Text('S',
                            style:
                                TextStyle(fontSize: 60, color: Colors.white)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: MyApp.primaryColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(Icons.person, color: Colors.white),
                          ),
                          Expanded(
                            child: TextField(
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                  hintText: 'Full Name',
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: MyApp.primaryColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(Icons.lock, color: Colors.white),
                          ),
                          Expanded(
                            child: TextField(
                              cursorColor: Colors.white,
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: MyApp.primaryColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(Icons.link, color: Colors.white),
                          ),
                          Expanded(
                            child: TextField(
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                  hintText: 'GitHub', border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: MyApp.primaryColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Update',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
