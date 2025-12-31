import 'package:flutter/material.dart';

// import '../../seat_selection/screens/seat_selection_screen.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _VideoPreview(),
          const SizedBox(height: 20),
          _RatingsRow(),
          const SizedBox(height: 16),
          const Text(
            'When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city\'s hidden corruption and question his family\'s involvement.',
            style: TextStyle(fontSize: 14, color: Colors.white70, height: 1.6),
          ),
          const SizedBox(height: 20),
          const _InfoItem('Certificate', valueWidget: _Badge('16+')),
          const _InfoItem('Runtime', value: '02:56'),
          const _InfoItem('Release', value: '2022'),
          const _InfoItem('Genre', value: 'Action, Crime, Drama'),
          const _InfoItem('Director', value: 'Matt Reeves'),
          const _InfoItem(
            'Cast',
            value: 'Robert Pattinson, Zoë Kravitz, Jeffrey Wright, Colin Farrell, Paul Dano...',
          ),
          const SizedBox(height: 30),
          _PrimaryButton(),
        ],
      ),
    );
  }
}

class _VideoPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.network(
            'https://image.tmdb.org/t/p/w780/9yBVqNruk6Ykrwc32qrK2TIE5xw.jpg',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            width: 56,
            height: 56,
            decoration: const BoxDecoration(color: Colors.black54, shape: BoxShape.circle),
            child: const Icon(Icons.play_arrow, size: 32),
          ),
        ],
      ),
    );
  }
}

class _RatingsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: _RatingBox('8.3', 'IMDB')),
        SizedBox(width: 12),
        Expanded(child: _RatingBox('7.9', 'Kinopoisk')),
      ],
    );
  }
}

class _RatingBox extends StatelessWidget {
  final String value;
  final String label;

  const _RatingBox(this.value, this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF162033),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(fontSize: 12, color: Colors.white54)),
        ],
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  final String label;
  final String? value;
  final Widget? valueWidget;

  const _InfoItem(this.label, {this.value, this.valueWidget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 90,
            child: Text(label, style: const TextStyle(color: Colors.white54, fontSize: 13)),
          ),
          Expanded(child: valueWidget ?? Text(value ?? '', style: const TextStyle(fontSize: 13))),
        ],
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  final String text;

  const _Badge(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white24),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(text, style: const TextStyle(fontSize: 12)),
    );
  }
}

class _PrimaryButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFF7A1A),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
        onPressed: () {
          // Go to seat selection screen
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return const SeatSelectionScreen();
          //     },
          //   ),
          // );
        },
        child: const Text(
          'Select session',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
