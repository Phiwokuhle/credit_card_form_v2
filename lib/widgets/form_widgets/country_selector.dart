import 'package:country_picker/country_picker.dart';
import 'package:credit_card_reader/core/data/mock_data.dart';
import 'package:credit_card_reader/core/utils/color_constant.dart';
import 'package:credit_card_reader/presentation/CardInputScreen/providers/credit_card_state.dart';
import 'package:credit_card_reader/presentation/CardInputScreen/validate.dart';
import 'package:credit_card_reader/widgets/form_widgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/utils/size_utils.dart';

class CountrySelectorWidget extends HookConsumerWidget {
  CountrySelectorWidget({
    Key? key,
  }) : super(key: key);
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    controller.text =
        ref.watch(creditCardNotifierProvider.notifier).state.issuingCountry ??
            "";
    return CustomTextField(
      validator: (input) => ValidateCard.validateIssuingCountry(input),
      height: 100,
      width: MediaQuery.of(context).size.width,
      hintText: "Issuing country",
      isReadOnly: true,
      controller: controller,
      suffixIcon: Padding(
        padding: getPadding(left: 10, right: 10),
        child: IconButton(
          onPressed: () {
            showCountryPicker(
              context: context,
              exclude: bannedCountries,
              showPhoneCode: false,
              useSafeArea: true,
              onSelect: (Country country) {
                ref
                    .read(creditCardNotifierProvider.notifier)
                    .setIssuingCountry(country.name);
              },
              countryListTheme: CountryListThemeData(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
                inputDecoration: InputDecoration(
                  labelText: 'Search',
                  hintText: 'Start typing to search',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorsConstants.bluegray60014.withOpacity(0.2),
                    ),
                  ),
                ),
                searchTextStyle: TextStyle(
                  color: ColorsConstants.black900,
                  fontSize: 18,
                ),
              ),
            );
          },
          icon: Icon(Icons.arrow_drop_down_outlined),
        ),
      ),
    );
  }
}
