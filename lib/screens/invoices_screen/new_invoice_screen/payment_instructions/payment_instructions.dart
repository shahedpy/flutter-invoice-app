import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/strings.dart';
import '../../../../controllers/invoice_controller.dart';
import '../../../../env/dimensions.dart';
import '../../../shared_widgets/custom_btn.dart';
import '../../../shared_widgets/custom_input_eng.dart';

class PaymentInstructions extends GetView<InvoiceController> {
  PaymentInstructions({Key? key}) : super(key: key);
  final TextEditingController _paymentInstInputController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (scroll) {
        scroll.disallowIndicator();
        return true;
      },
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: Dimensions.calcH(5),
            horizontal: Dimensions.calcW(15),
          ),
          child: Column(
            children: [
              Form(
                child: Column(
                  children: [
                    CustomInput_eng(
                      controller: _paymentInstInputController,
                      label: AppStrings.ADD_PAYMENT_INSTRUCTIONS_LABEL,
                      height: Dimensions.calcH(100),
                      isRequired: true,
                    ),
                  ],
                ),
              ),
              CustomBtn(
                label: AppStrings.SAVE_BTN,
                action: () {
                  if (_paymentInstInputController.text.isEmpty ||
                      _paymentInstInputController.text.length < 5) {
                    Get.snackbar(
                        "Error", "Please check your entries and try again!",
                        snackPosition: SnackPosition.BOTTOM);
                  } else {
                    controller.setPaymentInstructions(
                        _paymentInstInputController.text);
                    Get.close(1);
                  }
                },
                color: AppColors.kPrimaryColor,
                textColor: Colors.white,
                width: Dimensions.calcW(150),
              )
            ],
          ),
        ),
      ),
    );
  }
}
