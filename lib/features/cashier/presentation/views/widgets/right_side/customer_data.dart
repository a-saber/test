import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class CustomerData extends StatelessWidget {
   CustomerData({Key? key}) : super(key: key);

  var phone = TextEditingController();
  var region = TextEditingController();
  var name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
      [
        Row(
          children:
          [
            const FormFieldType(text: 'رقم الموبايل'),
            const SizedBox(width: 15,),
            ExpandedFormField(hint: '', controller: phone)
          ],
        ),
        const SizedBox(height: 15,),
        Row(
          children:
          [
            const FormFieldType(text: 'المنطقة'),
            const SizedBox(width: 15,),
            ExpandedFormField(hint: '', controller: region)
          ],
        ),
        const SizedBox(height: 15,),
        Row(
          children:
          [
            const FormFieldType(text: 'الاسم'),
            const SizedBox(width: 15,),
            ExpandedFormField(hint: '', controller: name)
          ],
        ),
      ],
    );
  }
}

class FormFieldType extends StatelessWidget {
  const FormFieldType({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorsManager.blue
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 5
        ),
        child: Text(text,style: StyleManager.threeMainInputs,textAlign: TextAlign.center,),
      ),
    );
  }
}


class ExpandedFormField extends StatelessWidget {


  ExpandedFormField({
    super.key,
    required this.hint,
    this.enabled,
    required this.controller,
    this.icon,
    this.suffixIcon,
    this.textInputType = TextInputType.text,
    this.isPassword = false,
    this.onpress,
    this.onChange,
    this.validator,
  });

  String hint;
  bool? enabled;
  bool? isPassword;
  TextEditingController controller;
  Widget? icon;
  Widget? suffixIcon;
  TextInputType textInputType;
  void Function()? onpress;
  void Function(String)? onChange;
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 230,
      child: TextFormField(
        enabled: enabled,
        validator: validator,
        // keyboardType: TextInputType.multiline,
        controller: controller,
        onChanged: onChange,
        // style: StyleManager.hintFormField.copyWith(fontSize: 11,
        //     fontWeight:FontWeight.w700,height: 1.5),
        obscureText: isPassword!,
        obscuringCharacter: '●',
       // cursorColor: ColorsManager.primaryColor,
        // expands:  true,
        maxLines: null,
        // minLines: null,


        decoration: InputDecoration(

            //errorStyle: StyleManager.errorFormField,
            filled: true,
            fillColor: ColorsManager.grey,
            suffixIconConstraints: const BoxConstraints(
              minWidth: 2,
              minHeight: 2,
            ),
            prefixIconConstraints: const BoxConstraints(
              minWidth: 2,
              minHeight: 2,
            ),
            prefixIcon:icon == null ? SizedBox(): Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: icon!,
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: suffixIcon,
            ),
            hintText: hint,
            disabledBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: ColorsManager.grey,
                )
            ) ,
            //hintStyle: StyleManager.hintFormField,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none
            ),
            focusedErrorBorder:  const UnderlineInputBorder(
                borderSide: BorderSide.none
            ),
            errorBorder: const UnderlineInputBorder(
                borderSide:BorderSide.none
            ),
            contentPadding: const EdgeInsetsDirectional.only(start: 15,top: 7,bottom: 7,end: 10)
        ),
      ),
    );
  }
}
// if(icon != null)
// icon!,
// const SizedBox(width: 15,),

// if(suffixIcon != null)
//   suffixIcon!


/*
TextField(
        style: const TextStyle(
            fontSize: 16,
            color: Colors.blueGrey,
            fontWeight: FontWeight.w600
        ),
          enabled: enabled,
          onChanged: onChange,
          keyboardType: textInputType,
          controller: controller,
          decoration: InputDecoration(
            icon: iconData,
            contentPadding: const EdgeInsets.only(bottom: 17),
            hintText: text,
            hintStyle: TextStyle(
              fontSize: 16,
                color: Colors.blueGrey.withOpacity(0.7),
              fontWeight: FontWeight.w600
            ),
            border: InputBorder.none,
            //prefixIcon: iconData,
          )
      )
 */
