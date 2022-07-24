import 'package:flutter/material.dart';
import 'package:stack_project/button.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WhatsApp(),
  ));
}

class WhatsApp extends StatefulWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyApp(
        title: 'WhatsApp',
      ),
      title: 'WhatsApp',
    );
  }
}

class MyApp extends StatefulWidget {
  MyApp({required this.title, Key? key}) : super(key: key);
  final String title;
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: const Image(
                      image: AssetImage('assets/images/instagram1.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Positioned(
                    top: 70,
                    left: 35,
                    child: Text(
                      'Cas',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                      ),
                      // Theme.of(context)
                      //     .textTheme
                      //     .headline1!
                      //     .copyWith(color: Colors.amber),
                    ),
                  ),
                  const Positioned(
                    bottom: 10,
                    right: 25,
                    child: Text(
                      'This is cas app',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                      ),
                      // Theme.of(context)
                      //     .textTheme
                      //     .headline1!
                      //     .copyWith(color: Colors.amber),
                    ),
                  )
                ],
              )),
          Expanded(
              flex: 8,
              child: LayoutBuilder(
                  builder: (context, constraints) => Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: 'User Name',
                                    hintText: 'Enter User Name',
                                    suffixIcon:
                                        const Icon(Icons.account_circle),
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.green, width: 5),
                                        borderRadius:
                                            BorderRadius.circular(40))),
                              )),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: 'User Email',
                                    hintText: 'Enter User Email',
                                    suffixIcon: const Icon(Icons.email),
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.green, width: 5),
                                        borderRadius:
                                            BorderRadius.circular(40))),
                              )),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: 'User Password',
                                    hintText: 'Enter User Password',
                                    suffixIcon: const Icon(Icons.vpn_key),
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.green, width: 5),
                                        borderRadius:
                                            BorderRadius.circular(40))),
                              )),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText: 'User PhoneNumber',
                                    hintText: 'Enter User PhoneNumber',
                                    suffixIcon: const Icon(Icons.phone),
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.green, width: 5),
                                        borderRadius:
                                            BorderRadius.circular(40))),
                              )),
                          SizedBox(
                            height: constraints.maxHeight * 0.1,
                          ),
                          Container(
                              width: constraints.maxWidth * 0.7,
                              margin: const EdgeInsets.only(top: 10),
                              child: MyButton(
                                  child: const Center(
                                    child: Text('Sign In',
                                        style: TextStyle(
                                          color: Colors.lightBlue,
                                          fontSize: 40,
                                        )),
                                  ),
                                  onPressed: () {})),

                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            color: Colors.white,
                            child: const Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                'forget password',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                                textAlign: TextAlign.end,
                              ),
                            ),
                            width: constraints.maxWidth * 0.6,
                          ),
                          // Builder(
                          //     builder: (context) => Container(
                          //           color: Colors.indigo,
                          //         ))
                        ],
                      ))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('data')));
        },
        tooltip: 'snackbar',
        child: const Icon(Icons.yard_outlined),
      ),
      drawer: Drawer(),
    );
  }
}
