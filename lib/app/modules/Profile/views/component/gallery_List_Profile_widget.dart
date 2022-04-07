import 'package:evento_ui/app/modules/Profile/views/image_model.dart';
import 'package:flutter/material.dart';

class GalleryListProfileWidget extends StatelessWidget {
  final List<ImageDetails> images;

  const GalleryListProfileWidget({Key? key, required this.images})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return RawMaterialButton(
            onPressed: () {},
            child: Hero(
              tag: 'logo$index',
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(images[index].imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: images.length,
      ),
    );
  }
}
