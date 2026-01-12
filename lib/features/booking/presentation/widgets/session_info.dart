import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class SessionInfo extends StatefulWidget {
  const SessionInfo({super.key});

  @override
  State<SessionInfo> createState() => _SessionInfoState();
}

class _SessionInfoState extends State<SessionInfo> {
  bool dateActive = true;
  bool timeActive = false;

  void openDatePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.appBarBg,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (_) => const DatePickerSheet(),
    );
  }

  void openTimePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.appBarBg,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (_) => const TimePickerSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          InfoChip(
            icon: Icons.calendar_today,
            text: 'April, 14',
            active: dateActive,
            onTap: () {
              setState(() {
                dateActive = true;
                timeActive = false;
              });
              // TODO: open date picker
              openDatePicker(context);
            },
          ),
          const SizedBox(width: 12),
          InfoChip(
            icon: Icons.access_time,
            text: '15:10',
            active: timeActive,
            onTap: () {
              setState(() {
                dateActive = false;
                timeActive = true;
              });
              // TODO: open time picker
              openTimePicker(context);
            },
          ),
        ],
      ),
    );
  }
}

class _ConfirmButton extends StatelessWidget {
  final VoidCallback onTap;

  const _ConfirmButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFF7A1A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        onPressed: onTap,
        child: const Text(
          'Confirm',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class DatePickerSheet extends StatefulWidget {
  const DatePickerSheet({super.key});

  @override
  State<DatePickerSheet> createState() => _DatePickerSheetState();
}

class TimePickerSheet extends StatefulWidget {
  const TimePickerSheet({super.key});

  @override
  State<TimePickerSheet> createState() => _TimePickerSheetState();
}

class _TimePickerSheetState extends State<TimePickerSheet> {
  String selected = '15:10';

  final times = ['12:30', '13:40', '15:10', '16:20', '18:00', '20:15'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Select time',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 20),
          ...times.map(
            (t) => _TimeRow(
              time: t,
              active: t == selected,
              onTap: () => setState(() => selected = t),
            ),
          ),
          const SizedBox(height: 20),
          _ConfirmButton(onTap: () => Navigator.pop(context)),
        ],
      ),
    );
  }
}

class _TimeRow extends StatelessWidget {
  final String time;
  final bool active;
  final VoidCallback onTap;

  const _TimeRow({
    required this.time,
    required this.active,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 160),
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: active
              ? const Color(0xFFFF7A1A).withOpacity(0.15)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: active ? const Color(0xFFFF7A1A) : Colors.white12,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          time,
          style: TextStyle(
            fontSize: 16,
            color: active ? const Color(0xFFFF7A1A) : Colors.white,
          ),
        ),
      ),
    );
  }
}

class _DatePickerSheetState extends State<DatePickerSheet> {
  int selectedDay = 14;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Select date',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 20),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 30,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (_, i) {
              final day = i + 1;
              final active = day == selectedDay;

              return GestureDetector(
                onTap: () => setState(() => selectedDay = day),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 180),
                  decoration: BoxDecoration(
                    color: active
                        ? const Color(0xFFFF7A1A)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white12),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '$day',
                    style: TextStyle(
                      color: active ? Colors.white : Colors.white70,
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          _ConfirmButton(onTap: () => Navigator.pop(context)),
        ],
      ),
    );
  }
}

class InfoChip extends StatefulWidget {
  final IconData icon;
  final String text;
  final bool active;
  final VoidCallback onTap;

  const InfoChip({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
    this.active = false,
  });

  @override
  State<InfoChip> createState() => _InfoChipState();
}

class _InfoChipState extends State<InfoChip> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    final borderColor = widget.active
        ? const Color(0xFFFF7A1A)
        : Colors.white12;

    final bgColor = widget.active
        ? const Color(0xFFFF7A1A).withOpacity(0.12)
        : Colors.transparent;

    return Expanded(
      child: GestureDetector(
        onTapDown: (_) => setState(() => pressed = true),
        onTapUp: (_) => setState(() => pressed = false),
        onTapCancel: () => setState(() => pressed = false),
        onTap: widget.onTap,
        child: AnimatedScale(
          scale: pressed ? 0.97 : 1,
          duration: const Duration(milliseconds: 120),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 180),
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: borderColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  widget.icon,
                  size: 16,
                  color: widget.active
                      ? const Color(0xFFFF7A1A)
                      : Colors.white70,
                ),
                const SizedBox(width: 6),
                Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: widget.active
                        ? const Color(0xFFFF7A1A)
                        : Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// class _InfoChip extends StatelessWidget {
//   final IconData icon;
//   final String text;

//   const _InfoChip(this.icon, this.text);

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 10),
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.white12),
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [Icon(icon, size: 16), const SizedBox(width: 6), Text(text)],
//         ),
//       ),
//     );
//   }
// }