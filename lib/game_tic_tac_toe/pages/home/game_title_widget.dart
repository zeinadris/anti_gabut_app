part of 'home_page.dart';

class GameTitleWidget extends StatelessWidget {
  const GameTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "Tic Tac Toe",
          style: TextStyle(
            fontSize: 34.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              width: 80.0,
              height: 80.0,
              child: Image(image: AssetImage('assets/img/tic-128.png')),
            ),
            SizedBox(
              width: 24.0,
            ),
          ],
        )
      ],
    );
  }
}
