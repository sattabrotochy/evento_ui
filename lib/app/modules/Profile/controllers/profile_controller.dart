import 'package:get/get.dart';

import '../views/image_model.dart';

class ProfileController extends GetxController {
  RxBool iconCategory = true.obs;
  RxBool iconGallery = false.obs;
  RxBool iconJobs = false.obs;

  setIconCategoryFlase() {
    iconCategory(false);
    update();
  }

  setIconsCategoryTrue() {
    iconCategory(true);
    update();
  }

  setIconGalleryFlase() {
    iconGallery(false);
    update();
  }

  setIconsGalleryTrue() {
    iconGallery(true);
    update();
  }

  setIconJobsFlase() {
    iconJobs(false);
    update();
  }

  setIconsJobsTrue() {
    iconJobs(true);
    update();
  }

  categoryGellayJobChnageButton(id) {
    if (id == 1) {
      setIconsCategoryTrue();
      setIconGalleryFlase();
      setIconJobsFlase();
    } else if (id == 2) {
      setIconsGalleryTrue();
      setIconCategoryFlase();
      setIconJobsFlase();
    } else if (id == 3) {
      setIconsJobsTrue();
      setIconGalleryFlase();
      setIconCategoryFlase();
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  // ignore: prefer_final_fields
  List<ImageDetails> images = [
  ImageDetails(
    imagePath: 'https://images.unsplash.com/photo-1470229538611-16ba8c7ffbd7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bXVzaWMlMjBldmVudCUyMGltYWdlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    price: '\$20.00',
    photographer: 'Martin Andres',
    title: 'New Year',
    details:
        'This image was taken during a party in New York on new years eve. Quite a colorful shot.',
  ),
  ImageDetails(
    imagePath: 'https://media.istockphoto.com/photos/carefree-woman-having-fun-on-a-music-festival-picture-id1191819296?b=1&k=20&m=1191819296&s=170667a&w=0&h=GVzknlqRhijQJFmAM4dixK22Ruo-XBKxurXjkFx5I0Y=',
    price: '\$10.00',
    photographer: 'Abraham Costa',
    title: 'Spring',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'https://media.istockphoto.com/photos/concert-crowd-picture-id483495210?b=1&k=20&m=483495210&s=170667a&w=0&h=JqKq54u-aY-LWTo-2JnZfjgYSAptbzbo2qxNaltPk6w=',
    price: '\$30.00',
    photographer: 'Jamie Bryan',
    title: 'Casual Look',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'https://media.istockphoto.com/photos/black-male-guitarist-singing-and-playing-acoustic-guitar-on-stage-picture-id1137781483?b=1&k=20&m=1137781483&s=170667a&w=0&h=-yNllTa_qcqnZWLpqIO9BMv4D8sKkRCA_PO9mIfIVv8=',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),



  
  ImageDetails(
    imagePath: 'https://media.istockphoto.com/photos/the-musicians-were-playing-rock-music-on-stage-there-was-an-audience-picture-id1319479588?k=20&m=1319479588&s=612x612&w=0&h=rcT9gClUB3fxjVUDzFmQHskGn0aXUmLqng9G9enelWU=',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'https://media.istockphoto.com/photos/rock-guitarist-playing-guitar-in-a-live-show-with-stage-lights-picture-id1328150617?k=20&m=1328150617&s=612x612&w=0&h=SgxkhpJ8QoV4u7YVZNwkdgJYF7Fm-go6DJT2Lza1lZo=',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'https://media.istockphoto.com/photos/he-has-some-amazing-musical-talents-picture-id1189316258?k=20&m=1189316258&s=612x612&w=0&h=itGyYzAT5H_JF7FTfc8ogvUCaSxjbXX9B0AwMYHiNxg=',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'https://media.istockphoto.com/photos/guitarist-on-stage-soft-and-blur-concept-picture-id613552524?k=20&m=613552524&s=612x612&w=0&h=iVJPE_mWa4d0gqT-x4Wt2CbceGvY2jWR7LnpB9iXyPU=',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  
];
}
