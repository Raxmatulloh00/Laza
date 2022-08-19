// import 'package:flutter/material.dart';

// class NewLesson extends StatefulWidget {
//   const NewLesson({Key? key}) : super(key: key);

//   @override
//   State<NewLesson> createState() => _NewLessonState();
// }

// class _NewLessonState extends State<NewLesson> {
//   TextEditingController textEditingController = TextEditingController();
//   int currentStep = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Stepper(
//             currentStep: currentStep,
//             onStepCancel: () {
//               setState(() {
//                 currentStep <= 0 ? currentStep = 0 : currentStep -= 1;
//               });
//             },
//             onStepContinue: () {
//               print("Continue");
//               setState(() {
//                 currentStep >= 2 ? currentStep = 2 : currentStep += 1;
//               });
//             },
//             steps: [
//               Step(
//                   state:
//                       currentStep > 0 ? StepState.complete : StepState.editing,
//                   title: Text("Email"),
//                   subtitle: Text("Enter your email"),
//                   isActive: currentStep == 0 ? true : false,
//                   content: TextFormField(
//                     controller: textEditingController,
//                     validator: (v) {
//                       return textEditingController.text.isEmpty
//                           ? "Is Empty"
//                           : null;
//                     },
//                   )),
//               Step(
//                   isActive: currentStep == 1 ? true : false,
//                   state:
//                       currentStep > 1 ? StepState.complete : StepState.editing,
//                   title: Text("New Password"),
//                   content: TextFormField()),
//               Step(
//                 isActive: currentStep == 2 ? true : false,
//                 state: currentStep > 2 ? StepState.complete : StepState.editing,
//                 title: Text("Re-enter New Password"),
//                 content: TextFormField(),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
