import 'package:flutter/material.dart';

import '../provider/base_provider.dart';
import './move_container_num.dart';

class RowNumOfQuestion extends StatelessWidget {
  const RowNumOfQuestion({
    super.key,
    required this.provider,
  });

  final QuizProvider provider;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MoveContainerOfNum(provider: provider),
      ],
    );
  }
}
