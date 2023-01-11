part of 'home_page.dart';

class GameModeSelectionWidget extends StatelessWidget {
  const GameModeSelectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "Pilih Mode Permainan",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 18.0,
        ),
        _GameButtonWidget(
          label: "Dengan AI",
          onPressed: () {
            Get.to(() => const GamePage(),
                binding: GamePageBinding(isMultiPlayer: false));
          },
        ),
        const SizedBox(
          height: 12.0,
        ),
        _GameButtonWidget(
          label: "Dengan Bestie",
          onPressed: () {
            Get.to(() => const GamePage(),
                binding: GamePageBinding(isMultiPlayer: true));
          },
        ),
        const SizedBox(
          height: 12.0,
        ),
        _GameButtonWidget(
          label: "Kembali ke Menu",
          onPressed: () {
            Get.to(
              () => BottomNavBar(),
            );
          },
        ),
      ],
    );
  }
}

class _GameButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const _GameButtonWidget({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size.fromWidth(240.0),
        shape: const StadiumBorder(),
        elevation: 0.0,
        textStyle: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
      ),
      child: Text(label),
    );
  }
}
