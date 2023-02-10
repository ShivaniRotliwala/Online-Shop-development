import 'package:kannonn_s_application1/presentation/home_page/home_page.dart';
import 'package:kannonn_s_application1/presentation/login_screen/login_screen.dart';
import 'package:kannonn_s_application1/presentation/login_screen/binding/login_binding.dart';
import 'package:kannonn_s_application1/presentation/home_container_screen/home_container_screen.dart';
import 'package:kannonn_s_application1/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:kannonn_s_application1/presentation/categories_screen/categories_screen.dart';
import 'package:kannonn_s_application1/presentation/categories_screen/binding/categories_binding.dart';
import 'package:kannonn_s_application1/presentation/listing_screen/listing_screen.dart';
import 'package:kannonn_s_application1/presentation/listing_screen/binding/listing_binding.dart';
import 'package:kannonn_s_application1/presentation/checkout_screen/checkout_screen.dart';
import 'package:kannonn_s_application1/presentation/checkout_screen/binding/checkout_binding.dart';
import 'package:kannonn_s_application1/presentation/success_screen/success_screen.dart';
import 'package:kannonn_s_application1/presentation/success_screen/binding/success_binding.dart';
import 'package:kannonn_s_application1/presentation/register_screen/register_screen.dart';
import 'package:kannonn_s_application1/presentation/register_screen/binding/register_binding.dart';
import 'package:kannonn_s_application1/presentation/menu_screen/menu_screen.dart';
import 'package:kannonn_s_application1/presentation/menu_screen/binding/menu_binding.dart';
import 'package:kannonn_s_application1/presentation/details_screen/details_screen.dart';
import 'package:kannonn_s_application1/presentation/details_screen/binding/details_binding.dart';
import 'package:kannonn_s_application1/presentation/cart_screen/cart_screen.dart';
import 'package:kannonn_s_application1/presentation/cart_screen/binding/cart_binding.dart';
import 'package:kannonn_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:kannonn_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String categoriesScreen = '/categories_screen';

  static const String listingScreen = '/listing_screen';

  static const String checkoutScreen = '/checkout_screen';

  static const String successScreen = '/success_screen';

  static const String registerScreen = '/register_screen';

  static const String menuScreen = '/menu_screen';

  static const String detailsScreen = '/details_screen';

  static const String cartScreen = '/cart_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: homePage,
      page: () => HomePage(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: categoriesScreen,
      page: () => CategoriesScreen(),
      bindings: [
        CategoriesBinding(),
      ],
    ),
    GetPage(
      name: listingScreen,
      page: () => ListingScreen(),
      bindings: [
        ListingBinding(),
      ],
    ),
    GetPage(
      name: checkoutScreen,
      page: () => CheckoutScreen(),
      bindings: [
        CheckoutBinding(),
      ],
    ),
    GetPage(
      name: successScreen,
      page: () => SuccessScreen(),
      bindings: [
        SuccessBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: menuScreen,
      page: () => MenuScreen(),
      bindings: [
        MenuBinding(),
      ],
    ),
    GetPage(
      name: detailsScreen,
      page: () => DetailsScreen(),
      bindings: [
        DetailsBinding(),
      ],
    ),
    GetPage(
      name: cartScreen,
      page: () => CartScreen(),
      bindings: [
        CartBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    )
  ];
}
