
import 'package:flutter/material.dart';
import '../palette.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric
        (vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[600]?.withOpacity(
              0.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding:
            const EdgeInsets.symmetric
              (vertical: 20),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.
              symmetric(horizontal: 20),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
            hintStyle: kBodyText,
          ),
          style: kBodyText,
          keyboardType: inputType,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}






















// import 'package:flutter/material.dart';
//
// TextField reusableTextField(String text, IconData icon, bool isPasswordType,
//     TextEditingController controller){
//   return TextField(controller: controller,
//     obscureText: isPasswordType,
//     enableSuggestions: !isPasswordType,
//     autocorrect: !isPasswordType,
//     cursorColor: Colors.white,
//
//   decoration: InputDecoration(
//     prefixIcon: Icon(icon, color: Colors.white70,),
//   contentPadding:
//   const EdgeInsets.symmetric
//   (vertical: 20),
//   border: InputBorder.none,
//
//   labelText: text,
//   labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
//   filled: true,
//   floatingLabelBehavior: FloatingLabelBehavior.never,
//   fillColor: Colors.white.withOpacity(0.3),
//
//   )
//
//     // keyboardType: isPasswordType
//     //     ? TextInputType.visiblePassword
//     //     : TextInputType.emailAddress,
//   );
// }