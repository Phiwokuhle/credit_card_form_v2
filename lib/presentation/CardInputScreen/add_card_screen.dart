import 'package:credit_card_reader/core/utils/color_constant.dart';
import 'package:credit_card_reader/presentation/CardInputScreen/forms/credit_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddNewCardScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorsConstants.whiteA70063,
      body: SafeArea(child: CreditCardForm()),
    );
  }
}
