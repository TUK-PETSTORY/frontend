import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:front/src/controllers/site_controller.dart';
import '../../../widgets/listitems/site_list_item.dart';

class ShopFavorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SiteController siteController = Get.put(SiteController());

    siteController.fetchFavorites();

    return Obx(() {
      if (siteController.sites.isEmpty) {
        return Center(child: Text('즐겨찾기한 사이트가 없습니다.'));
      } else {
        return ListView.builder(
          itemCount: siteController.sites.length,
          itemBuilder: (BuildContext context, int index) {
            var site = siteController.sites[index];
            return ShopListItem(
              siteId: site['id'],
              siteName: site['site_name'],
              siteUrl: site['site_url'],
              imageUrl: site['img_url'],
              content: site['content'],
              isLiked: true,
            );
          },
        );
      }
    });
  }
}
