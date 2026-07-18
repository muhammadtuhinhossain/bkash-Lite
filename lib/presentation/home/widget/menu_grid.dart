import 'package:bikash_lite_app/core/app_colors.dart';
import 'package:bikash_lite_app/presentation/home/provider/home_provider.dart';
import 'package:bikash_lite_app/presentation/home/widget/menu_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuGrid extends StatelessWidget {
  const MenuGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, _) {
        final item = provider.visibleItems;
        final isExpended = provider.isExpanded;

        return Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              padding: .zero,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: item.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 16,
                childAspectRatio: 0.72,
                crossAxisSpacing: 16,
              ),
              itemBuilder: (context, index) {
                return MenuGridItem(item: item[index]);
              },
            ),
            OutlinedButton(
              onPressed: () {
                provider.toggleExpanded();
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: AppColors.primary),
                shape: RoundedRectangleBorder(borderRadius: .circular(8),
                ),
              ),
              child: Text(isExpended ? 'See Less' : 'See More',style: TextStyle(color: AppColors.primary),
              ),
            ),
            SizedBox(height: 16,),
            Image.asset(
              'assets/offfer_banner.png',
            )
          ],
        );
      },
    );
  }
}
