import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice_app/env/routing.dart';

void main() {
  runApp(const InvoiceApp());
}

class InvoiceApp extends StatelessWidget {
  const InvoiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      initialRoute: "/",
      getPages: AppRouting.ROUTES,
    );
  }
}
