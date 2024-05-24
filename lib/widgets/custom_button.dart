import 'package:flutter/material.dart';
import 'package:notes_app/constats.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    this.isLoading = false,
  });
  final bool isLoading;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(16)),
        child:const Center(
          child: Text(
                  'Add',
                  style: TextStyle(fontSize: 20 ,color: Colors.black) ,
                ),
        ),
      ),
    );
  }
}
