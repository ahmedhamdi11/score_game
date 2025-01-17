import 'package:flutter/material.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';

class HistoryTable extends StatelessWidget {
  const HistoryTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        // header
        TableRow(
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(12),
            ),
          ),
          children: List.generate(
            5,
            (i) => _tableCell(
              title: i == 0 ? "" : 'احمد',
              cellColor: i == 3 ? AppColors.primary_300 : null,
              displayDivider: i != 4,
            ),
          ),
        ),

        // rest of the table rows
        ...List.generate(
          5,
          (rowIndex) => TableRow(
            children: List.generate(
              5,
              (cellIndex) => _tableCell(
                title: cellIndex == 0 ? "جولة ${rowIndex + 1}" : '5',
                displayDivider: cellIndex != 4,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _tableCell({
    required String title,
    Color? cellColor,
    BorderRadiusGeometry? borderRadius,
    bool displayDivider = true,
  }) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: cellColor,
                borderRadius: borderRadius,
              ),
              child: Text(
                title,
                style: AppTextStyles.regular_12,
              ),
            ),
          ),
          if (displayDivider)
            const VerticalDivider(
              thickness: 1,
              width: 0,
            ),
        ],
      ),
    );
  }
}
