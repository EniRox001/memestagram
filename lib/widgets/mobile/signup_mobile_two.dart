import 'package:flutter/material.dart';
import 'package:memestagram/providers/form_providers.dart';
import 'package:memestagram/utils/colors.dart';
import 'package:memestagram/utils/validators.dart';
import 'package:memestagram/widgets/common/w_elevated_button.dart';
import 'package:memestagram/widgets/common/w_phone_inputfield.dart';
import 'package:memestagram/widgets/common/w_stock_inputfield.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';

class SignupMobileTwo extends StatefulWidget {
  const SignupMobileTwo({super.key});

  @override
  State<SignupMobileTwo> createState() => _SignupMobileTwoState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _SignupMobileTwoState extends State<SignupMobileTwo>
    with TickerProviderStateMixin {
  late TabController _tabController;

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    bool changeColor = false;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Enter Phone Number or Email',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        bottom: TabBar(
          indicatorColor: AppColors.black,
          unselectedLabelColor: Colors.grey,
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          controller: _tabController,
          tabs: const <Widget>[
            Tab(text: 'Phone number'),
            Tab(text: 'Email'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0.sp),
            child: Column(
              children: <Widget>[
                WPhoneInputField(
                  controller: phoneNumberController,
                  hintText: 'Phone Number',
                ),
                WElevatedButton(
                    onPressed: () {
                      print(context.read<FormProviders>().validatedPhoneField);
                    },
                    text: 'Next',
                    color: AppColors.blue),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0.sp),
            child: Column(
              children: [
                WStockInputField(
                  controller: emailAddressController,
                  hintText: 'Email Address',
                  validator: (val) {
                    return validateEmail(val);
                  },
                  onChanged: (value) {
                    return validateEmailProvider(value, context);
                  },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                WElevatedButton(
                  onPressed: () {},
                  text: 'Next',
                  color: context.watch<FormProviders>().validatedField
                      ? AppColors.blue
                      : AppColors.lightBlue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
