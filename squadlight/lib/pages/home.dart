import 'package:flutter/material.dart';
import '../main.dart';
import 'package:squadlight/inheritedSocket.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final usernameController = TextEditingController();
  final roomNameController = TextEditingController();
  String username = '';
  String roomName = '';

  void changeUsername(input) {
    username = input;
  }

  void changeRoomName(input) {
    roomName = input;
  }

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    roomNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    InheritedSocket.of(context).socket.connect();
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'SquadLight',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.account_circle),
                labelText: 'Name:',
              ),
              onChanged: (input) => {changeUsername(input)},
            ),
            TextField(
              controller: roomNameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.account_circle),
                labelText: 'Squad name:',
              ),
              onChanged: (input) => {changeRoomName(input)},
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  InheritedSocket.of(context)
                      .socket
                      .emit('joinRoom', {roomName, username});
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.amber),
                ),
                icon: const Icon(
                  Icons.add,
                  size: 40,
                  color: Colors.black,
                ),
                label: const Text(
                  'Create Squad',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                InheritedSocket.of(context)
                    .socket
                    .emit('joinRoom', {roomName, username});
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainPage(),
                    ));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
              ),
              icon: const Icon(
                Icons.arrow_forward,
                size: 40,
                color: Colors.black,
              ),
              label: const Text(
                'Join Squad',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
