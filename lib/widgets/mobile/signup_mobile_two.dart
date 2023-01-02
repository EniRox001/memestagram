import 'package:flutter/material.dart';

class SignupMobileTwo extends StatefulWidget {
  const SignupMobileTwo({super.key});

  @override
  State<SignupMobileTwo> createState() => _SignupMobileTwoState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _SignupMobileTwoState extends State<SignupMobileTwo>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Enter Phone Number or Email',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        bottom: TabBar(
          indicatorColor: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              text: 'Phone number',
            ),
            Tab(
              text: 'Email',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: Text("It's cloudy here"),
          ),
          Center(
            child: Text("It's rainy here"),
          ),
        ],
      ),
    );
  }
}
