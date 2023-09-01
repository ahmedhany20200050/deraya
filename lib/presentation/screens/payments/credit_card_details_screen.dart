import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/screens/payments/finish_payment_screen.dart';
import 'package:deraya_application/presentation/screens/payments/payment_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_credit_card/glassmorphism_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../components/button_widget.dart';
import '../../components/text_form_field.dart';
import '../../components/text_widget.dart';

class CreditCardDetailsScreen extends StatefulWidget {
  const CreditCardDetailsScreen({super.key});

  @override
  State<CreditCardDetailsScreen> createState() =>
      _CreditCardDetailsScreenState();
}

class _CreditCardDetailsScreenState extends State<CreditCardDetailsScreen> {
  bool rememberMe = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        reverse: true,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                50.ph,
                CustomAppbar(
                  title: 'card details',
                ),
                CreditCardWidget(
                  cardNumber: '  8908 6789 5678 3456',
                  expiryDate: '03/23',
                  cardHolderName: 'Mostafa Ramadan hamed',
                  cvvCode: '7865',
                  showBackView: false,
                  bankName: 'CIB BANK',
                  cardType: CardType.mastercard,
                  glassmorphismConfig: Glassmorphism(
                    blurX: 10.0,
                    blurY: 0,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Colors.grey.withAlpha(20),
                        Colors.white.withAlpha(20),
                      ],
                      stops: const <double>[
                        0.3,
                        0,
                      ],
                    ),
                  ),
                  backgroundImage: 'assets/images/Rectangle 1.png',
                  labelValidThru: '  VALID',
                  obscureCardNumber: false,
                  obscureInitialCardNumber: false,
                  obscureCardCvv: true,
                  isHolderNameVisible: true,
                  height: 175,
                  textStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width,
                  isChipVisible: true,
                  isSwipeGestureEnabled: true,
                  animationDuration: const Duration(milliseconds: 1000),
                  // frontCardBorder: Border.all(color: Colors.blue),
                  // backCardBorder: Border.all(color: Colors.deepPurple),
                  onCreditCardWidgetChange: (CreditCardBrand) {},
                ),
                50.ph,
                Container(
                  height: 45,
                  padding: EdgeInsets.all(5),
                  color: AppColors.lightBackground,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: AppColors.primary,
                    ))),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 100,
                          child: Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            child: TextFormField(
                              style: TextStyle(
                                height: 0.2,
                              ),
                              cursorColor: AppColors.primary,
                              onChanged: (String value) {},
                              maxLines: 1,
                              decoration: InputDecoration(
                                  // suffixIcon: ImageIcon(
                                  //   AssetImage("assets/images/cardLogo.png",),
                                  //
                                  // ),
                                  hintText: "اسم البطاقة",
                                  hintStyle: TextStyle(
                                    color: AppColors.primary.withOpacity(0.8),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                            ),
                          ),
                        ),
                        Spacer(),
                        Image.asset(
                          "assets/images/cardLogo.png",
                          width: 40,
                        )
                      ],
                    ),
                  ),
                ),
                16.ph,
                Container(
                  height: 45,
                  padding: EdgeInsets.all(5),
                  color: AppColors.lightBackground,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: AppColors.primary,
                    ))),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 100,
                          child: Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            child: TextFormField(
                              style: TextStyle(
                                height: 0.2,
                              ),
                              cursorColor: AppColors.primary,
                              onChanged: (String value) {},
                              maxLines: 1,
                              decoration: InputDecoration(
                                  // suffixIcon: ImageIcon(
                                  //   AssetImage("assets/images/cardLogo.png",),
                                  //
                                  // ),
                                  hintText: "رقم البطاقة",
                                  hintStyle: TextStyle(
                                    color: AppColors.primary.withOpacity(0.8),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                            ),
                          ),
                        ),
                        Spacer(),
                        Image.asset(
                          "assets/images/cardLogo.png",
                          width: 40,
                        )
                      ],
                    ),
                  ),
                ),
                16.ph,
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 120,
                      padding: EdgeInsets.all(5),
                      color: AppColors.lightBackground,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: AppColors.primary,
                        ))),
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom),
                                child: TextFormField(
                                  style: TextStyle(
                                    height: 0.1,
                                  ),
                                  cursorColor: AppColors.primary,
                                  onChanged: (String value) {},
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                      hintText: "تاريخ الانتهاء",
                                      hintStyle: TextStyle(
                                        fontSize: 12,
                                        color:
                                            AppColors.primary.withOpacity(0.8),
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 45,
                      width: 120,
                      padding: EdgeInsets.all(5),
                      color: AppColors.lightBackground,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: AppColors.primary,
                        ))),
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom),
                                child: TextFormField(
                                  style: TextStyle(
                                    height: 0.2,
                                  ),
                                  cursorColor: AppColors.primary,
                                  onChanged: (String value) {},
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                      // suffixIcon: ImageIcon(
                                      //   AssetImage("assets/images/cardLogo.png",),
                                      //
                                      // ),
                                      hintText: "رمز الحماية",
                                      hintStyle: TextStyle(
                                        fontSize: 12,
                                        color:
                                            AppColors.primary.withOpacity(0.8),
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                16.ph,
                Container(
                  height: 45,
                  padding: EdgeInsets.all(5),
                  color: AppColors.lightBackground,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: AppColors.primary,
                    ))),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 100,
                          child: Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            child: TextFormField(
                              style: TextStyle(
                                height: 0.2,
                              ),
                              cursorColor: AppColors.primary,
                              onChanged: (String value) {},
                              maxLines: 1,
                              decoration: InputDecoration(
                                  // suffixIcon: ImageIcon(
                                  //   AssetImage("assets/images/cardLogo.png",),
                                  //
                                  // ),
                                  hintText: "الرمز البريدي",
                                  hintStyle: TextStyle(
                                    color: AppColors.primary.withOpacity(0.8),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: rememberMe,
                      onChanged: (val) {
                        setState(() {
                          rememberMe = val!;
                        });
                      },
                      side: const BorderSide(
                        color: AppColors.primary,
                        width: 1,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    TextWidget(
                      title: 'أوافق علي الشروط',
                      fontSize: 13.86.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primary,
                    ),
                  ],
                ),
                20.ph,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ButtonWidget(
                    onTap: (){
                      if(rememberMe){
                        //todo: pay
                        Utils.openScreen(context, FinishPaymentScreen());
                      }else{
                        Fluttertoast.showToast(
                            msg: "يجب أن توافق علي الشروط",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 2,
                            backgroundColor: AppColors.primary,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      }
                    },
                    radius: 10,
                    title: "شراء",
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                180.ph
              ],
            ),
          ),
        ),
      ),
    );
  }
}
