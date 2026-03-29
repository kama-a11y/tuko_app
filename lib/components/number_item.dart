import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:tuko_app/models/number_model.dart';

class NumberItem extends StatefulWidget {
  const NumberItem(this.color, this.number, {super.key});

  final item number;
  final Color color;

  @override
  State<NumberItem> createState() => _NumberItemState();
}

class _NumberItemState extends State<NumberItem> {
  late AudioPlayer player;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();

    // لما الصوت يخلص
    player.onPlayerComplete.listen((event) {
      setState(() {
        isPlaying = false;
      });
    });
  }

  Future<void> playSound() async {
    try {
      setState(() {
        isPlaying = true;
      });

      await player.stop(); // لو فيه صوت شغال قبل كده
      await player.play(AssetSource(widget.number.sound));
    } catch (e) {
      setState(() {
        isPlaying = false;
      });
      debugPrint("Error playing sound: $e");
    }
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      width: double.infinity,
      height: 90,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            height: double.infinity,
            width: 80,
            color: const Color(0xffFFFDE4),
            child: Image.asset(widget.number.image),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.number.jpname,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text(
                widget.number.enname,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              )
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: playSound,
              icon: Icon(
                isPlaying ? Icons.pause_circle_filled : Icons.play_circle_fill,
                color: Colors.white,
                size: 32,
              ),
            ),
          )
        ],
      ),
    );
  }
}