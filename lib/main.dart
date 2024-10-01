import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final List<String> names = [
    'hamza',
    'Ali',
    'Junaid bahe',
    'Saif bro',
    'pani waala',
    'haji saab',
    'Mohsin'
  ];

  @override

  Widget build(BuildContext context) {
    return
    MaterialApp(
      home: DefaultTabController(
      
      length: 4,
      child: Scaffold(
      
      appBar: AppBar(
      shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))),
      elevation: 15.0,
      shadowColor: Colors.green,
      title: Center(
      child: DefaultTextStyle(
      style: const TextStyle(
      fontSize: 20.0,
      ),
      child: AnimatedTextKit(
      animatedTexts: [
      WavyAnimatedText('Hello User',
      textStyle: const TextStyle(color: Colors.black)),
      WavyAnimatedText('Talk With Me',
      textStyle: const TextStyle(color: Colors.black)),
      ],
      isRepeatingAnimation: true,
      ),
      ),
      ),
      leading: PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      itemBuilder: (context) => [
      const PopupMenuItem(
      padding: EdgeInsets.all(20),
      value: 'privacy',
      child: Center(child: Text('Status privacy'))),
      const PopupMenuItem(
      value: 'views', child: Center(child: Text('Status Views'))),
      ],
      ),
      actions: const [
      
      Icon(Icons.add_circle),
      SizedBox(width: 20),
      Icon(Icons.camera_alt_rounded),  SizedBox(width: 20),
      ],
      backgroundColor: Colors.green,
      ),
      
      body: TabBarView(children: [
      
      // First Tab: Status List
      ListView.builder(
      itemCount: names.length, // Fixed item count usage
      itemBuilder: (context, index) {
      return ListTile(
      title: Text(names[index]), // Removed const to use dynamic value
      subtitle: const Text('Can you give me info '),
      trailing: const Text('10:32pm'),
      leading: const CircleAvatar(child: Icon(Icons.account_circle_sharp),
      // backgroundImage: NetworkImage(
      //  'https://images.pexels.com/photos/1918246/pexels-photo-1918246.jpeg?auto=compress&cs=tinysrgb&w=600'),
      ),
      );
      },
      ),
      // Second Tab: Contact List with Green Border
      ListView.builder(
      itemCount: names.length,
      itemBuilder: (context, index) {
      return Column(
      children: [
      ListTile(
      leading: Container(
      decoration: BoxDecoration(
      border: Border.all(color: Colors.green),
      borderRadius: BorderRadius.circular(20),
      ),
      child: const CircleAvatar(
      child: Icon(Icons.account_circle_sharp)),
      ),
      title: Text(names[index]),
      subtitle: const Text('7:09am'),
      ),
      ],
      );
      },
      ),
      // Third Tab: Call List
      ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
      return ListTile(
      title: const Text('Hamza'),
      subtitle: Text(index % 2 == 0
      ? 'You missed audio call'
          : 'You missed video call'),
      trailing: Icon(index % 2 == 0
      ? Icons.phone_missed_sharp
          : Icons.videocam_rounded),
      leading: const CircleAvatar(
      backgroundImage: NetworkImage(
      'https://images.pexels.com/photos/1918246/pexels-photo-1918246.jpeg?auto=compress&cs=tinysrgb&w=600'),
      ),
      );
      },
      ),
      // Fourth Tab: Settings
      SingleChildScrollView(
      // Added SingleChildScrollView to manage overflow
      child: Column(
      children: [
      ListTile(
      title: const Text('Account'),
      leading: const Icon(Icons.account_circle_rounded),
      onTap: () {
      Navigator.push(
      context,
      MaterialPageRoute(
      builder: (context) => const AutoScree(),
      ));
      },
      ),
      ListTile(
      title: const Text('Privacy'),
      leading:const Icon(Icons.privacy_tip_rounded),
      onTap: () {
      Navigator.push(
      context,
      MaterialPageRoute(
      builder: (context) => const PrivacyScreen(),
      ));
      },
      ),
      ListTile(
      title: const Text('Chats'),
      leading:const Icon(Icons.chat),
      onTap: () {
      Navigator.push(
      context,
      MaterialPageRoute(
      builder: (context) => const ChatSetting(),
      ));
      },
      ),
      ListTile(
      title:const Text('Notification'),
      leading: const Badge(
      backgroundColor: Colors.red,
      isLabelVisible: true,
      child: Icon(Icons.notifications)),
      onTap: () {
      Navigator.push(
      context,
      MaterialPageRoute(
      builder: (context) =>const Notifications(),
      ));
      },
      ),
      ListTile(
      title:const Text('Storage and data'),
      leading: const Icon(Icons.storage),
      onTap: () {
      Navigator.push(
      context,
      MaterialPageRoute(
      builder: (context) => const Storage_data(),
      ));
      },
      ),
      ListTile(
      title:const Text('Help'),
      leading:const Icon(Icons.help),
      onTap: () {
      Navigator.push(
      context,
      MaterialPageRoute(
      builder: (context) => const Help(),
      ));
      },
      ),
      ],
      ),
      ),
      ]),
      bottomNavigationBar: Container(
      //padding: EdgeInsetsDirectional.symmetric(vertical: 20),
      //decoration: BoxDecoration(shape: BoxShape.c),
      color: Colors.grey.shade300,
      child: const TabBar(
      tabs: [
      Tab(
      icon: Icon(
      Icons.chat_bubble_outline,
      color: Colors.green,
      ),
      text: 'Chats',
      ),
      Tab(
      icon: Badge(
      isLabelVisible: true,
      backgroundColor: Colors.red,
      child: Icon(
      Icons.lightbulb_circle_rounded,
      color: Colors.green,
      ),
      ),
      text: 'Status',
      ),
      Tab(
      icon: Icon(
      Icons.call,
      color: Colors.green,
      ),
      text: 'Calls',
      ),
      Tab(
      icon: Badge(
      backgroundColor: Colors.red,
      isLabelVisible: true,
      child: Icon(
      Icons.settings,
      color: Colors.green,
      ),
      ),
      text: 'Settings',
      ),
      ],
      ),
      ),
      ),
      ),
    );
    }
    }

    class AutoScree extends StatelessWidget {
    const AutoScree({super.key});

    @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title:const  Text('Account Managment'), backgroundColor: Colors.green),
    body:const Center(
    child: Icon(
    Icons.account_circle_outlined,
    size: 50,
    ),
    ),
    );
    }
    }

    class PrivacyScreen extends StatelessWidget {
    const PrivacyScreen({super.key});

    @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title:const Text('Privacy Managment'), backgroundColor: Colors.green),
    body:const Center(
    child: Icon(
    Icons.privacy_tip_outlined,
    size: 50,
    ),
    ),
    );
    }
    }

    class ChatSetting extends StatelessWidget {
    const ChatSetting({super.key});

    @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar:
    AppBar(title:const Text('Chats Managment'), backgroundColor: Colors.green),
    body:const Center(
    child: Icon(
    Icons.chat_outlined,
    size: 50,
    ),
    ),
    );
    }
    }

    class Notifications extends StatelessWidget {
    const Notifications({super.key});

    @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title:const Text('Notification Managment'), backgroundColor: Colors.green),
    body: const Center(
    child: Badge(
    child: Icon(
    Icons.notification_add_outlined,
    size: 50,
    )),
    ),
    );
    }
    }

    class Storage_data extends StatelessWidget {
    const Storage_data({super.key});

    @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title:const Text('Storage & Data Managment'),
    backgroundColor: Colors.green),
    body: const Center(
    child: Icon(Icons.storage_sharp, size: 50),
    ),
    );

    }
    }

    class Help extends StatelessWidget {
    const Help({super.key});

    @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar:
    AppBar(title: const Text('Help Managment'), backgroundColor: Colors.green),
    body:const Center(
    child: Icon(
    Icons.help_center_outlined,
    size: 50,
    ),
    ),
    );
    }
    }



