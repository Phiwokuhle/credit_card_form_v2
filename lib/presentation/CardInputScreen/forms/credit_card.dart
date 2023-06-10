import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:credit_card_reader/core/Navigation/routes.dart';
import 'package:credit_card_reader/core/utils/card_number_input_formatter.dart';
import 'package:credit_card_reader/core/utils/color_constant.dart';
import 'package:credit_card_reader/core/utils/size_utils.dart';
import 'package:credit_card_reader/presentation/CardInputScreen/providers/credit_card_state.dart';
import 'package:credit_card_reader/presentation/CardInputScreen/providers/credit_cards_notifier.dart';
import 'package:credit_card_reader/presentation/CardInputScreen/validate.dart';
import 'package:credit_card_reader/widgets/common_image_view.dart';
import 'package:credit_card_reader/widgets/custom_button.dart';
import 'package:credit_card_reader/widgets/form_widgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _formKey = GlobalKey<FormState>();

class CreditCardForm extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formStateNotifier = ref.watch(creditCardNotifierProvider);
    return Center(
      child: Container(
        margin: getMargin(all: 20),
        decoration: BoxDecoration(
            color: ColorsConstants.whiteA700,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(top: 20, bottom: 20),
                  child: Text(
                    'Add New Card',
                    style: GoogleFonts.asap(
                        fontSize: getFontSize(30),
                        textStyle: Theme.of(context).textTheme.titleLarge,
                        color: ColorsConstants.black900,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5),
                  ),
                ),
                SizedBox(height: getVerticalSize(10)),
                Row(
                  children: [
                    Expanded(
                        child: CustomTextField(
                      onChanged: (v) => ref
                          .read(creditCardNotifierProvider.notifier)
                          .setCardNumber(v),
                      inputType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(19),
                        CardNumberSpacesFormat()
                      ],
                      hintText: 'Card Number',
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      suffixIcon: Padding(
                        padding: getPadding(left: 10, right: 10),
                        child: CommonImageView(
                            svgPath: formStateNotifier.cardType.iconPath),
                      ),
                      validator: (input) => ValidateCard.validateCardNum(input),
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: CustomTextField(
                            onChanged: (value) => ref
                                .read(creditCardNotifierProvider.notifier)
                                .setNameOnCard(value),
                            validator: (value) =>
                                ValidateCard.validateName(value),
                            hintText: 'Name on Card',
                            height: 100,
                            width: MediaQuery.of(context).size.width))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: CustomTextField(
                            onChanged: (value) => ref
                                .read(creditCardNotifierProvider.notifier)
                                .setCvv(value),
                            validator: (value) =>
                                ValidateCard.validateCVV(value),
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(4),
                            ],
                            hintText: 'CVV',
                            height: 100,
                            width: MediaQuery.of(context).size.width / .5)),
                    Expanded(
                        child: CustomTextField(
                            onChanged: (value) => ref
                                .read(creditCardNotifierProvider.notifier)
                                .setExpiryDate(value),
                            validator: (value) =>
                                ValidateCard.validateDate(value),
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(4),
                              CardDateExpiryDateFormat()
                            ],
                            hintText: 'MM/YY',
                            height: 100,
                            width: MediaQuery.of(context).size.width / .5))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomButton(
                        onTap: () => context.go(CreditCardAppRoutes.homeScreen),
                        text: "CANCEL",
                        buttonColor: ColorsConstants.red700,
                        height: 70,
                        width: MediaQuery.of(context).size.width / .5,
                      ),
                    )),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomButton(
                        text: "SAVE",
                        buttonColor: ColorsConstants.blue700,
                        height: 70,
                        width: MediaQuery.of(context).size.width / .5,
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            ref
                                .read(creditCardNotifierProvider.notifier)
                                .saveCreditCard()
                                .whenComplete(() => AwesomeDialog(
                                      context: context,
                                      dialogType: DialogType.SUCCES,
                                      animType: AnimType.TOPSLIDE,
                                      title: 'Success',
                                      desc: 'Card Added',
                                      btnOkOnPress: () {
                                        ref
                                            .read(creditCardsStateNotifier
                                                .notifier)
                                            .loadCreditCards();
                                        context
                                            .go(CreditCardAppRoutes.homeScreen);
                                      },
                                    )..show());
                          }
                        },
                      ),
                    ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
