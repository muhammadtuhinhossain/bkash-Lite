import 'package:bikash_lite_app/core/app_colors.dart';
import 'package:bikash_lite_app/presentation/home/view/widget/app_bar_widget.dart';
import 'package:flutter/material.dart';

import '../widget/menu_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MenuGrid(),
          ],
        ),
      ),
    );
  }
}


