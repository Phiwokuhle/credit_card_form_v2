import 'dart:ui';

import 'package:credit_card_reader/core/Navigation/routes.dart';
import 'package:credit_card_reader/core/utils/card_helpers.dart';
import 'package:credit_card_reader/core/utils/color_constant.dart';
import 'package:credit_card_reader/core/utils/image_constant.dart';
import 'package:credit_card_reader/core/utils/size_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'common_image_view.dart';

class CreditCard extends StatelessWidget {
  final String? cardNumber;
  final String? cardHolder;
  final String? expiryDate;
  final String? cvv;
  final Color? backgroundColor;
  final bool showEmptyCard;
  final Function? cardOnclick;

  const CreditCard({
    this.cardNumber,
    this.cardHolder,
    this.expiryDate,
    this.showEmptyCard = false,
    this.cvv,
    this.backgroundColor,
    this.cardOnclick,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Container(
            width: getSize(300),
            height: getSize(182),
            decoration: BoxDecoration(
              color: backgroundColor ?? ColorsConstants.bluegray400,
              borderRadius: BorderRadius.circular(16),
            ),
            padding: EdgeInsets.all(16),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: !showEmptyCard
                  ? _buildCardContentWidget(context)
                  : _addCardWidget(context),
            )),
      ),
    );
  }

  Column _buildCardContentWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: getPadding(left: 10, right: 10),
              child: CommonImageView(
                imagePath: ImageConstants.im_card_chip,
                width: getSize(30),
                height: getSize(30),
              ),
            ),
            SizedBox(width: getSize(170)),
            CommonImageView(svgPath: CardHelper.getCardType(cardNumber!)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              cardNumber!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Text(
          cardHolder!.toUpperCase(),
          style: GoogleFonts.asap(
              fontSize: getFontSize(16),
              textStyle: Theme.of(context).textTheme.titleLarge,
              color: ColorsConstants.whiteA700,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Text(
              expiryDate!,
              style: TextStyle(
                color: ColorsConstants.whiteA700,
                fontSize: 16,
              ),
            ),
            SizedBox(width: getSize(180)),
            Text(
              cvv!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _addCardWidget(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go(CreditCardAppRoutes.addCardScreen),
      child: Column(
        children: [
          Icon(
            Icons.add,
            color: ColorsConstants.whiteA700,
            size: getSize(80),
          ),
          Text(
            "add new card",
            style: GoogleFonts.alike(
                fontSize: getFontSize(20),
                textStyle: Theme.of(context).textTheme.bodyMedium,
                color: ColorsConstants.whiteA700,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5),
          )
        ],
      ),
    );
  }
}
