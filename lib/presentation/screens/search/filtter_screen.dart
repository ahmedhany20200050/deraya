import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen>with TickerProviderStateMixin{
  bool _isChecked=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: Padding(
     padding:  EdgeInsets.symmetric(horizontal: 18.w),
     child: SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           50.ph,
           const Title(),
           const CoursesNumber(),
           12.ph,
           const CustomDivider(indent: 40,),
           20.ph,
           const FilterTitle(text: 'الترتيب حسب',),
           const SortByRatingOrNewest(),
           20.ph,
           const CustomDivider(),
           12.ph,
           const FilterTitle(text: 'الترتيب حسب',),
           Row(
             children: [
               Checkbox(
                   activeColor: AppColors.primary,
                   fillColor: MaterialStateProperty.all(AppColors.primary),
                   overlayColor: MaterialStateProperty.all(AppColors.primary),

                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                   value: _isChecked, onChanged: (val){
                 setState(() {
                   _isChecked = val!;
                 });
               }),TextWidget(title: 'جميع المستويات',fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.primary,),
               24.pw,
               Checkbox(
                   activeColor: AppColors.primary,
                   fillColor: MaterialStateProperty.all(AppColors.primary),
                   overlayColor: MaterialStateProperty.all(AppColors.primary),

                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                   value: false, onChanged: (val){
                 setState(() {
                   _isChecked = val!;
                 });
               }),TextWidget(title: 'خبير',fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.primary,)
             ],
           ),
           Row(
             children: [
               Checkbox(
                   activeColor: AppColors.primary,
                   fillColor: MaterialStateProperty.all(AppColors.primary),
                   overlayColor: MaterialStateProperty.all(AppColors.primary),

                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                   value: false, onChanged: (val){
                 setState(() {
                   _isChecked = val!;
                 });
               }),TextWidget(title: 'متوسط',fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.primary,),
               80.pw,
               Checkbox(
                   activeColor: AppColors.primary,
                   fillColor: MaterialStateProperty.all(AppColors.primary),
                   overlayColor: MaterialStateProperty.all(AppColors.primary),

                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                   value: false, onChanged: (val){
                 setState(() {
                   _isChecked = val!;
                 });
               }),TextWidget(title: 'مبتدئ',fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.primary,)
             ],
           ),

           const CustomDivider(),
           const FilterTitle(text: 'اللغة',),
           Row(
             children: [
               Checkbox(
                 activeColor: AppColors.primary,
                   fillColor: MaterialStateProperty.all(AppColors.primary),
                   overlayColor: MaterialStateProperty.all(AppColors.primary),

                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                   value: _isChecked, onChanged: (val){
                 setState(() {
                   _isChecked = val!;
                 });
               }),TextWidget(title: 'العربية',fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.primary,),
               80.pw,
               Checkbox(
                 activeColor: AppColors.primary,
                   fillColor: MaterialStateProperty.all(AppColors.primary),
                   overlayColor: MaterialStateProperty.all(AppColors.primary),

                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                   value: false, onChanged: (val){
                 setState(() {
                   _isChecked = val!;
                 });
               }),TextWidget(title: 'الإنجليزية',fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.primary,)
             ],
           ),
           const CustomDivider(),
           const FilterTitle(text: 'السعر',),
           Row(
             children: [
               Checkbox(
                   activeColor: AppColors.primary,
                   fillColor: MaterialStateProperty.all(AppColors.primary),
                   overlayColor: MaterialStateProperty.all(AppColors.primary),

                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                   value: _isChecked, onChanged: (val){
                 setState(() {
                   _isChecked = val!;
                 });
               }),TextWidget(title: 'السعر',fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.primary,),
               80.pw,
               Checkbox(
                   activeColor: AppColors.primary,
                   fillColor: MaterialStateProperty.all(AppColors.primary),
                   overlayColor: MaterialStateProperty.all(AppColors.primary),

                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                   value: false, onChanged: (val){
                 setState(() {
                   _isChecked = val!;
                 });
               }),TextWidget(title: 'مدفوع',fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.primary,)
             ],
           ),
           const CustomDivider(),
           const FilterTitle(text: 'التقييمات',),
           Row(
             children: [
               Checkbox(
                   activeColor: AppColors.primary,
                   fillColor: MaterialStateProperty.all(AppColors.primary),
                   overlayColor: MaterialStateProperty.all(AppColors.primary),

                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                   value: _isChecked, onChanged: (val){
                 setState(() {
                   _isChecked = val!;
                 });
               }),TextWidget(title: '4.5 و ما فوق',fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.primary,),
             ],
           ),
           Row(
             children: [
               Checkbox(
                   activeColor: AppColors.primary,
                   fillColor: MaterialStateProperty.all(AppColors.primary),
                   overlayColor: MaterialStateProperty.all(AppColors.primary),

                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                   value: _isChecked, onChanged: (val){
                 setState(() {
                   _isChecked = val!;
                 });
               }),TextWidget(title: '4.0 و ما فوق',fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.primary,),
             ],
           ),
           Row(
             children: [
               Checkbox(
                   activeColor: AppColors.primary,
                   fillColor: MaterialStateProperty.all(AppColors.primary),
                   overlayColor: MaterialStateProperty.all(AppColors.primary),

                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                   value: _isChecked, onChanged: (val){
                 setState(() {
                   _isChecked = val!;
                 });
               }),TextWidget(title: '3.5 و ما فوق',fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.primary,),
             ],
           ),
           Row(
             children: [
               Checkbox(
                   activeColor: AppColors.primary,
                   fillColor: MaterialStateProperty.all(AppColors.primary),
                   overlayColor: MaterialStateProperty.all(AppColors.primary),

                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                   value: _isChecked, onChanged: (val){
                 setState(() {
                   _isChecked = val!;
                 });
               }),TextWidget(title: '3.0 و ما فوق',fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.primary,),
             ],
           ),

         ],
       ),
     ),
   ),
    );
  }
}

class SortByRatingOrNewest extends StatelessWidget {
  const SortByRatingOrNewest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 31,
          width: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.primary,
            boxShadow: [
              const BoxShadow(spreadRadius: 0,blurRadius: 8,color: Colors.grey,blurStyle: BlurStyle.outer),
            ],
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.primary,width: 2),
          ),
          child: const TextWidget(title: 'التقييمات',fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white,),
        ) ,
        20.pw,
        Container(
          height: 31,
          width: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: [
              const BoxShadow(spreadRadius: 0,blurRadius: 6,color: Colors.grey,blurStyle: BlurStyle.outer),
            ],
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.primary,width: 2),
          ),
          child: const TextWidget(title: 'الأحدث',fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.primary,),
        ),
      ],
    );
  }
}

class FilterTitle extends StatelessWidget {
  const FilterTitle({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextWidget(title: text,fontSize: 18,fontWeight: FontWeight.w600,color: AppColors.primary,),
        const Spacer(),
        IconButton(onPressed: (){}, icon: const Icon(Icons.info_outline,color:Colors.grey,size: 20,)),
      ],
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    this.indent,
    super.key,
  });
final double ? indent;
  @override
  Widget build(BuildContext context) {
    return  Divider(
      thickness: 2,
      indent: indent??0,
      endIndent: indent??0,
    );
  }
}

class CoursesNumber extends StatelessWidget {
  const CoursesNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextWidget(title: '11000 دورة',fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xFF787B7D),);
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        TextWidget(title: 'التصميم',color: AppColors.primary,fontSize: 24,fontWeight: FontWeight.w700,),
        Spacer(),
        CancelButton(),
      ],
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
      Navigator.of(context).pop();
    },icon: Container(
     decoration: BoxDecoration(
       color: Colors.transparent,
       borderRadius: BorderRadius.circular(32),
       border: Border.all(color: AppColors.primary,width: 2)
     ),

      child: const Icon(Icons.close,color: AppColors.primary,size: 24,)),);
  }
}
