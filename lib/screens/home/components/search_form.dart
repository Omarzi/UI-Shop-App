import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class SearchForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'Search items...',
            filled: true,
            fillColor: Colors.white,
            border: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset('assets/icons/Search.svg'),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: SizedBox(
                height: 48,
                width: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(defaultBorderRadius)))),
                  child: SvgPicture.asset('assets/icons/Filter.svg'),
                ),
              ),
            )),
      ),
    );
  }
}

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
    borderSide: BorderSide.none);
