import 'dart:ui';

import 'package:credit_card_reader/core/Navigation/routes.dart';
import 'package:credit_card_reader/core/utils/color_constant.dart';
import 'package:credit_card_reader/core/utils/size_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Container(
        width: getSize(300),
        height: getSize(182), // Adjust width as needed
        decoration: BoxDecoration(
          color: backgroundColor ?? ColorsConstants.bluegray400,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: EdgeInsets.all(16),
        child: !showEmptyCard
            ? _buildCardContentWidget()
            : _addCardWidget(context));
  }

  Column _buildCardContentWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              cardNumber ?? "",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.credit_card,
              color: ColorsConstants.whiteA700,
            ),
          ],
        ),
        SizedBox(height: 20),
        Text(
          cardHolder ?? "",
          style: TextStyle(
            color: ColorsConstants.whiteA700,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              expiryDate ?? "",
              style: TextStyle(
                color: ColorsConstants.whiteA700,
                fontSize: 16,
              ),
            ),
            Text(
              cvv ?? "",
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
