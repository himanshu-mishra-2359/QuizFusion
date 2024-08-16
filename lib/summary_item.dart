import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_project/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final bool isCorrectAnswer = itemData['user_answer'] as String ==
        itemData['correct_answer'] as String;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 198, 123, 123),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  itemData['user_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 211, 198, 20),
                  ),
                ),
                Text(
                  itemData['correct_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 29, 228, 35),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:second_project/question_identifier.dart';

// class SummaryItem extends StatelessWidget {
//   const SummaryItem(this.itemData, {super.key});

//   final Map<String, Object> itemData;

//   @override
//   Widget build(BuildContext context) {
//     final isCorrectAnswer =
//         itemData['user_answer'] == itemData['correct_answer'];

//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         QuestionIdentifier(
//           isCorrectAnswer: isCorrectAnswer,
//           questionIndex: itemData['question_index'] as int,
//         ),
//         const SizedBox(
//           width: 20,
//         ),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 itemData['question'] as String,
//                 style: GoogleFonts.lato(
//                   color: const Color.fromARGB(255, 198, 123, 123),
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(
//                 height: 5,
//               ),
//               Text(
//                 itemData['user_answer'] as String,
//                 style: const TextStyle(
//                   color: Color.fromARGB(255, 177, 141, 236),
//                 ),
//               ),
//               Text(
//                 itemData['correct_answer'] as String,
//                 style: const TextStyle(
//                   color: Color.fromARGB(255, 125, 201, 192),
//                 ),
//               )
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
