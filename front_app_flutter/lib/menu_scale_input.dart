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
  List<Map<String, dynamic>> _answers = [];

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
          title: Text(AppLocalizations.of(context)!.ansFinish),
          content: Text(
            _selectedAns.map((e) {
              final scaleMap = { for (var s in _scale) s['id']!: s };
              final question = scaleMap[e['id']]?['text'] ?? '';
              final answerText = _answers.firstWhere(
                (a) => a['value'] == e['value'],
                orElse: () => {'text': AppLocalizations.of(context)!.ansNotFinish},
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
              child: Text(AppLocalizations.of(context)!.finishBtn),
        )])
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    _answers = [
      {'text': AppLocalizations.of(context)!.scaleInput5, 'value': 5},
      {'text': AppLocalizations.of(context)!.scaleInput4, 'value': 4},
      {'text': AppLocalizations.of(context)!.scaleInput3, 'value': 3},
      {'text': AppLocalizations.of(context)!.scaleInput2, 'value': 2},
      {'text': AppLocalizations.of(context)!.scaleInput1, 'value': 1},
    ];

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
                    child: Text(AppLocalizations.of(context)!.backBtn)
                ),
                ElevatedButton(
                  onPressed: _selectedAns[_currentIdx]['value'] == null ? null : _nextQuestion,
                  child: Text(_currentIdx < _scale.length - 1 ? AppLocalizations.of(context)!.frontBtn : AppLocalizations.of(context)!.sendBtn)
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
