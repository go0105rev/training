import 'package:flutter/material.dart';

/// メンタルスケール詳細履歴画面
class MenuScaleDetail extends StatefulWidget {
  const MenuScaleDetail({super.key});

  @override
  _MenuScaleDetailState createState() => _MenuScaleDetailState();
}

class _MenuScaleDetailState extends State<MenuScaleDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("スケール詳細履歴")),
        body: _MScaleTable(),
      );
  }
}

/// データモデル
class MScaleRecord {
  final String id;
  final List<int?> answers; // M001〜M020
  final String? other;

  MScaleRecord({required this.id, required this.answers, this.other});

  String getValue(int index) {
    if (index < answers.length) return (answers[index] ?? 0).toString();
    return other ?? '';
  }
}

/// ダミーデータ
final sampleRecords = [
  MScaleRecord(id: "MS25000001", answers: [2,2,3], other: null),
  MScaleRecord(id: "MS25000002", answers: [1,3,3], other: null),
  MScaleRecord(id: "MS25000003", answers: [2,5,3], other: null),
];

final items = ["M001", "M002", "M003", "OTHER"];

/// ----------------------
///  表 UI（案2）
/// ----------------------
/// 表 UI
class _MScaleTable extends StatelessWidget {
  const _MScaleTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // 横スクロール
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 上段：ヘッダー
          Row(
            children: [
              const SizedBox(width: 80), // 左上空白
              ...sampleRecords.map((r) => Container(
                width: 110,
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                ),
                child: Text(r.id, textAlign: TextAlign.center),
              )),
            ],
          ),

          // 各行
          ...List.generate(items.length, (rowIdx) {
            return Row(
              children: [
                // 左端：項目名
                Container(
                  width: 80,
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    color: Colors.grey.shade200,
                  ),
                  child: Text(items[rowIdx]),
                ),

                // 各列：値
                ...sampleRecords.map((r) {
                  String value = rowIdx < 3 ? r.answers[rowIdx].toString() : (r.other ?? '');
                  return Container(
                    width: 110,
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                    ),
                    child: Text(value),
                  );
                }).toList(),
              ],
            );
          }),
        ],
      ),
    );
  }
}
