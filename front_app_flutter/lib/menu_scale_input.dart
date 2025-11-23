import 'package:flutter/material.dart';
import 'package:front_app_flutter/l10n/app_localizations.dart';
import 'package:front_app_flutter/main_screen.dart';

/// メンタルスケール入力画面
class MenuScaleInput extends StatefulWidget {
  const MenuScaleInput({super.key});

  @override
  _MenuScaleInputState createState() => _MenuScaleInputState();
}

class _MenuScaleInputState extends State<MenuScaleInput> {
  int _currentIdx = 0;
  List<String?> _selectedAns = [];

  final List<String> _answers = [
    'そうだ。',
    'まあそうだ。',
    'やや違う。',
    '違う。',
  ];

  final List<String> _scale = [
    '私の部署内で意見のくい違いがある',
    '職場の仕事の方針に自分の意見を反映できる',
    '自分で仕事の順番・やり方を決めることができる',
    'からだを大変よく使う仕事だ',
  ];

  @override
  void initState() {
    super.initState();
    _selectedAns = List<String?>.filled(_scale.length, null);
  }

  void _nextQuestion() {

    if (_currentIdx < _scale.length - 1) {
      setState(() {_currentIdx++;});

    } else {
      // 最後の質問へ
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('回答完了'),
          content: Text(_selectedAns.asMap().entries.map((e) => 'Q${e.key+1}: ${e.value ?? "未回答"}').join('\n')),
          actions: [
            TextButton(
              onPressed: () => {Navigator.pop(context), Navigator.push(context,MaterialPageRoute(builder: (_) => MainScreen()))}, // 遷移先 Screen)
              child: const Text('完了'),
        )])
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.menuScaleInput),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(_scale[_currentIdx], style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            // ラジオボタンリスト
            ..._answers.map((answer) => RadioListTile<String>(
              title: Text(answer),
              value: answer,
              groupValue: _selectedAns[_currentIdx],
              onChanged: (String? value) {setState(() {_selectedAns[_currentIdx] = value;});
              },
            )),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                if (_currentIdx != 0)
                  ElevatedButton (
                    onPressed: () => setState(() =>_currentIdx--),
                    child: Text('前へ')
                ),
                ElevatedButton(
                  onPressed: _selectedAns[_currentIdx] == null ? null : _nextQuestion,
                  child: Text(_currentIdx < _scale.length - 1 ? '次へ' : '送信')
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
