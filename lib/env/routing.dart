import 'package:get/get.dart';
import 'package:invoice_app/env/links.dart';
import 'package:invoice_app/screens/home_screen/home_screen.dart';
import 'package:invoice_app/screens/splash_screen/splash_screen.dart';

import '../screens/home_screen/home_binding.dart';
import '../screens/invoices_screen/invoice_preview/invoice_preview_screen.dart';
import '../screens/invoices_screen/new_invoice_screen/new_business_details/new_business_details.dart';
import '../screens/invoices_screen/new_invoice_screen/new_invoice_binding.dart';
import '../screens/invoices_screen/new_invoice_screen/new_invoice_screen.dart';
import '../screens/invoices_screen/new_invoice_screen/new_items/add_item.dart';
import '../screens/invoices_screen/new_invoice_screen/new_items/item_binding.dart';
import '../screens/invoices_screen/new_invoice_screen/new_payer_details/new_payer_details.dart';
import '../screens/invoices_screen/new_invoice_screen/sign_invoice/sign_invoice.dart';

class AppRouting {
  static final ROUTES = [
    GetPage(
      name: AppLinks.SPLASHSCREEN,
      page: () => const SplashScreen(),
    ),
    GetPage(
        name: AppLinks.HOME,
        page: () => const HomeScreen(),
        transition: Transition.circularReveal,
        binding: HomeBinding()),
    GetPage(
      name: AppLinks.NEW_INVOICE,
      page: () => const NewInvoiceScreen(),
      transition: Transition.fadeIn,
      binding: NewInvoiceBinding(),
    ),
    GetPage(
      name: AppLinks.NEW_BUSINESS,
      page: () => const NewBusinessScreen(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: AppLinks.NEW_PAYER,
      page: () => const NewPayerScreen(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: AppLinks.NEW_ITEM,
      page: () => const NewItemScreen(),
      transition: Transition.rightToLeftWithFade,
      binding: ItemsBinding(),
    ),
    GetPage(
      name: AppLinks.SIGNATURE,
      page: () => const SignatureScreen(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: AppLinks.PREVIEW,
      page: () => InvoicePreviewScreen(),
    ),
  ];
}
