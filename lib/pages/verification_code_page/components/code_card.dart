import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CodeCard extends StatefulWidget {
  TextEditingController textEditingController;
  bool? isItFour;
  CodeCard(this.textEditingController, {this.isItFour = false, Key? key})
      : super(key: key);

  @override
  State<CodeCard> createState() => _CodeCardState();
}

class _CodeCardState extends State<CodeCard> {
  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      alignment: Alignment.center,
      width: 65,
      height: 98,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: widget.textEditingController,
        focusNode: focusNode,
        decoration: const InputDecoration(
          focusColor: Colors.transparent,
          border: OutlineInputBorder(),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
        onChanged: (v) {
          widget.isItFour!
              ? widget.textEditingController.text.length == 1
                  ? setState(
                      () {
                        focusNode.unfocus();
                      },
                    )
                  : focusNode.requestFocus()
              : widget.textEditingController.text.length == 1
                  ? setState(
                      () {
                        focusNode.nextFocus();
                      },
                    )
                  : focusNode.requestFocus();
        },
        validator: (value) {
          if (widget.textEditingController.text.isEmpty) {
            return "Empty Field";
          }
          return null;
        },
        style: const TextStyle(
          fontSize: 38,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
