import 'package:get/get.dart';

import '../modules/Profile/bindings/profile_binding.dart';
import '../modules/Profile/views/profile_view.dart';
import '../modules/bookTickets_screen/bindings/book_tickets_screen_binding.dart';
import '../modules/bookTickets_screen/views/book_tickets_screen_view.dart';
import '../modules/category_screen/bindings/category_screen_binding.dart';
import '../modules/category_screen/views/category_screen_view.dart';
import '../modules/event_screen/bindings/event_screen_binding.dart';
import '../modules/event_screen/views/event_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/location_set_page/bindings/location_set_page_binding.dart';
import '../modules/location_set_page/views/location_set_page_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/onboarding_screen/bindings/onboarding_screen_binding.dart';
import '../modules/onboarding_screen/views/onboarding_screen_view.dart';
import '../modules/payment_screen/bindings/payment_screen_binding.dart';
import '../modules/payment_screen/views/payment_screen_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/tickets_screen/bindings/tickets_screen_binding.dart';
import '../modules/tickets_screen/views/tickets_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_SCREEN,
      page: () => const OnboardingScreenView(),
      binding: OnboardingScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.LOCATION_SET_PAGE,
      page: () => LocationSetPageView(),
      binding: LocationSetPageBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORY_SCREEN,
      page: () => CategoryScreenView(),
      binding: CategoryScreenBinding(),
    ),
    GetPage(
      name: _Paths.EVENT_SCREEN,
      page: () => EventScreenView(),
      binding: EventScreenBinding(),
    ),
    GetPage(
      name: _Paths.BOOK_TICKETS_SCREEN,
      page: () => BookTicketsScreenView(),
      binding: BookTicketsScreenBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_SCREEN,
      page: () => PaymentScreenView(),
      binding: PaymentScreenBinding(),
    ),
    GetPage(
      name: _Paths.TICKETS_SCREEN,
      page: () => TicketsScreenView(),
      binding: TicketsScreenBinding(),
    ),
  ];
}
