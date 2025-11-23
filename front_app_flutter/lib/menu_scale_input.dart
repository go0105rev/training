import 'package:flutter/material.dart';
import 'package:front_app_flutter/app_database.dart';
import 'package:front_app_flutter/app_mental_api.dart';
import 'package:front_app_flutter/l10n/app_localizations.dart';
import 'package:front_app_flutter/main_screen.dart';

/// メンタルスケール入力画面
class MenuScaleInput extends StatefulWidget {
  const MenuScaleInput({super.key});

  @override
  _MenuScaleInputState createState() => _MenuScaleInputState();
}

class _MenuScaleInputState extends State<MenuScaleInput> {
  final String userId = "S000000001"; //テスト用
  int _currentIdx = 0;
  List<Map<String,dynamic>> _selectedAns = [];

  final List<Map<String, dynamic>> _answers = [
    {'text': '非常にそうだ。', 'value': 5},
    {'text': 'そうだ。', 'value': 4},
    {'text': 'ややそうだ。', 'value': 3},
    {'text': 'あまり違う。', 'value': 2},
    {'text': '全く違う。', 'value': 1},
  ];

  final List<Map<String, String>> _scale = [
    {'text':'','id':'m001'},
    {'text':'','id':'m002'},
    {'text':'','id':'m003'},
    {'text':'','id':'m004'},
    {'text':'','id':'m005'},
  ];

  @override
  void initState() {
    super.initState();
    _selectedAns = List.generate(_scale.length,(_) => {'id': null, 'value': null}, growable: false);
    _loadQuestion();
  }

  Future<void> _loadQuestion() async {
    for (final e in _scale) {
      e['text'] = (await QuestionApi.fetchQuestion(userId, e['id']!))!;
    }
    setState(() {}); // UI 更新
  }

  Future<void> _insertScale() async {
    int s = await MentalScaleDatabase.instance.getNextSequence();
    String seqStr = 'MS25${s.toString().padLeft(6, '0')}';
    final answersMap = <String, dynamic>{
      'mscale_num': seqStr,
      's_date': DateTime.now().toIso8601String(),
    };

    for (int i = 0; i < _selectedAns.length; i++) {
      answersMap[_selectedAns[i]['id']] = _selectedAns[i]['value'];
    }

    // DBに保存
    await MentalScaleDatabase.instance.insertAnswer(answersMap);
  }

  void _nextQuestion() {

    if (_currentIdx < _scale.length - 1) {
      setState(() {_currentIdx++;});

    } else {
      // 最後の質問へ
      showDialog(
        context: context,
        builder: (dialogContext) => AlertDialog(
          title: const Text('回答完了'),
          content: Text(
            _selectedAns.map((e) {
              final scaleMap = { for (var s in _scale) s['id']!: s };
              final question = scaleMap[e['id']]?['text'] ?? '未回答質問';
              final answerText = _answers.firstWhere(
                (a) => a['value'] == e['value'],
                orElse: () => {'text': '未回答'},
              )['text'];
              return '${e['id']} $question:\n  $answerText';
            }).join('\n'),),

          actions: [
            TextButton(
              onPressed: () async {
                // await _insertScale();
                Navigator.pop(dialogContext);
                showDialog(context: context,barrierDismissible: false,builder: (_) => Center(child: CircularProgressIndicator()),);
                await QuestionApi.registScale(userId, _selectedAns);
                Navigator.pop(context);
                Navigator.push(context,MaterialPageRoute(builder: (_) => MainScreen()));
              }, // 遷移先 Screen)
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
            Text(_scale[_currentIdx]['text']!, style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            // ラジオボタンリスト
            ..._answers.map((answer) => RadioListTile<int>(
              title: Text(answer['text']),
              value: answer['value'],
              groupValue: _selectedAns[_currentIdx]['value'],
              onChanged: (int? value) {setState(() {_selectedAns[_currentIdx]['id']=_scale[_currentIdx]['id']!; _selectedAns[_currentIdx]['value'] = value;});
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
                  onPressed: _selectedAns[_currentIdx]['value'] == null ? null : _nextQuestion,
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
