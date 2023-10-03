// ignore_for_file: deprecated_member_use

import 'package:ecomik/utils/constants/app_constants.dart';
import 'package:ecomik/widgets/core_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddMoneyScreen extends StatelessWidget {
  const AddMoneyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* <-------- Appbar --------> */
      appBar: CoreWidgets.appBarWidget(
          screenContext: context, titleWidget: const Text('Add money')),
      /* <-------- Content --------> */
      body: CustomScaffoldBodyWidget(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top extra spaces
              AppGaps.hGap15,
              const Text('Available balance',
                  style: TextStyle(color: AppColors.bodyTextColor)),
              AppGaps.hGap2,
              Text(r'$ 278.98', style: Theme.of(context).textTheme.headline2),
              AppGaps.hGap24,
              Text('Bank information',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: AppColors.primaryColor)),
              AppGaps.hGap16,
              /* <---- Account holder name text field ----> */
              const CustomTextFormField(
                  labelText: 'Account holder name',
                  hintText: 'George Anderson',
                  prefixIcon: AppGaps.emptyGap),
              AppGaps.hGap24,
              /* <---- Bank name text field ----> */
              const CustomTextFormField(
                  labelText: 'Bank name',
                  hintText: 'HBSJ Bank of New York',
                  prefixIcon: AppGaps.emptyGap),
              AppGaps.hGap24,
              /* <---- Branch code text field ----> */
              const CustomTextFormField(
                  labelText: 'Branch code',
                  hintText: '2379 3820 2922',
                  textInputType: TextInputType.number,
                  prefixIcon: AppGaps.emptyGap),
              AppGaps.hGap24,
              /* <---- Account number text field ----> */
              CustomTextFormField(
                labelText: 'Account number',
                hintText: '3849 **** 2738',
                prefixIcon: AppGaps.emptyGap,
                textInputType: TextInputType.number,
                suffixIcon: IconButton(
                  onPressed: () {},
                  visualDensity: const VisualDensity(
                      horizontal: VisualDensity.minimumDensity,
                      vertical: VisualDensity.minimumDensity),
                  padding: EdgeInsets.zero,
                  icon: SvgPicture.asset(AppAssetImages.hideSVGLogoLine,
                      height: 20, width: 20),
                ),
              ),
              AppGaps.hGap24,
              /* <---- Amount of transfer text field ----> */
              const CustomTextFormField(
                  labelText: 'Amount of transfer',
                  hintText: '500',
                  textInputType: TextInputType.number,
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(bottom: 1),
                    child: Text(r'$',
                        style: TextStyle(color: AppColors.bodyTextColor)),
                  )),
              AppGaps.hGap30,
            ],
          ),
        ),
      ),
      /* <-------- Bottom bar --------> */
      bottomNavigationBar: CustomScaffoldBottomBarWidget(
          child: CustomStretchedButtonWidget(
        onTap: () {},
        child: const Text('Add money now'),
      )),
    );
  }
}
