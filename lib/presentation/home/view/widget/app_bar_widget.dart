import 'package:bikash_lite_app/presentation/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/app_colors.dart';
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary,
      toolbarHeight: 80,
      automaticallyImplyLeading: false,
      title: Row(
        spacing: 8,
        children: [
          CircleAvatar(child: Icon(Icons.person,size: 20,),),
          Column(
            crossAxisAlignment: .start,
            children: [
              Text('Tuhin Hasan',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: .bold,
                  color: Colors.white,
                ),
              ),
              Container(
                height: 30,
                width: 136,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: .circular(8),
                ),
                child: Row(
                  mainAxisAlignment: .start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: .circular(6),
                        ),
                        child: Center(
                          child: Text('৳',
                            style: TextStyle(color: Colors.white, fontWeight: .bold, fontSize: 16),
                            textAlign: .center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 4,),
                    Center(
                      child: GestureDetector(
                        onDoubleTap: (){
                          Provider.of<HomeProvider>(context, listen: false).toggleBalanceTapped();
                        },
                        child: Text('Tap for Balance',
                          style: TextStyle(fontSize: 12, fontWeight: .bold, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: .circular(20),
                ),
                child: IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              ),
              SizedBox(width: 8,),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/bkash.png',
                    width: 24,
                    height: 24,
                    color: AppColors.primary,
                  )
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(80);
}