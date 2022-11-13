import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../modules/pay_amount/controllers/amount_controller.dart';

class TopUp extends StatelessWidget {
  const TopUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AmountController a = Get.put(AmountController());
    return GestureDetector(
      onTap: () {
        a.isPay.value = 1;
        Get.toNamed("/PayInputAmount");
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset('lib/assets/images/wallet_icon.png'),
          const Text(
            'Top Up',
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
