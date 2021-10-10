import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: TabBar(
        indicatorColor: Colors.transparent,
        controller: _tabController,
        tabs:  [
          _myTab(const Icon(Icons.more,size: 22,color: Colors.grey,)),
          _myTab(const Icon(Icons.play_arrow,size: 22,color: Colors.grey,)),
          _myTab(const Icon(Icons.navigation,size: 22,color: Colors.black ,)),
          _myTab(const Icon(Icons.supervised_user_circle,size: 22,color: Colors.grey,)),

        ],
      ),
    );
  }

  Tab _myTab(Widget icon){
    return Tab(icon: icon,
    
    );
  }
}
