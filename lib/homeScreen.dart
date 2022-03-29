import 'package:flutter/material.dart';
import 'package:whatsapp_ui/conversationsScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController=TabController(vsync: this,length: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 103, 82, 1),
        title: Text("WhatsApp"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
        bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          indicatorWeight: 4,
          tabs: [
           Tab(
             icon: Icon(Icons.camera_alt),
           ),
           Tab(
             text: "CHATS",
           ),
           Tab(
             text: "STATUS",
           ),
           Tab(
             text: "CALLS",
           )
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Text("Camera"),
          ConversationsScreen(),
          Text("STATUS"),
          Text("CALLS")
        ],
      ),
    );
  }
}
