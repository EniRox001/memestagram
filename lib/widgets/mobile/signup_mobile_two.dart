import 'package:flutter/material.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:memestagram/utils/colors.dart';
import 'package:memestagram/widgets/common/w_elevated_button.dart';
import 'package:sizer/sizer.dart';

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

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
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
                IntlPhoneField(
                  initialCountryCode: 'NG',
                  flagsButtonMargin: const EdgeInsets.only(left: 20.0),
                  flagsButtonPadding: const EdgeInsets.only(right: 10.0),
                  showCountryFlag: true,
                  showDropdownIcon: false,
                  pickerDialogStyle: PickerDialogStyle(
                    searchFieldPadding: EdgeInsets.zero,
                    searchFieldInputDecoration: InputDecoration(
                      hintText: 'Search Country',
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black87,
                        ),
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                      ),
                    ),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black87,
                      ),
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                  ),
                  onChanged: (phone) {},
                ),
                WElevatedButton(onPressed: () {}, text: 'Next')
              ],
            ),
          ),
          const Center(
            child: Text("Enter email here"),
          ),
        ],
      ),
    );
  }
}
