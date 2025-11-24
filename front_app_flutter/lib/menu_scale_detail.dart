import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fl_chart/fl_chart.dart';

/// メンタルスケール詳細履歴画面
class MenuScaleDetail extends StatefulWidget {
  const MenuScaleDetail({super.key});

  @override
  _MenuScaleDetailState createState() => _MenuScaleDetailState();
}

/// データモデル
class MScaleRecord {
  final String id;
  final DateTime date;
  final Map<String,int> answers; // M001〜M020
  final String? other;

  MScaleRecord({required this.id, required this.date, required this.answers, this.other});

  String getValue(int index) {
    if (index < answers.length) return (answers[index] ?? 0).toString();
    return other ?? '';
  }

  int get total => answers.values.fold(0, (sum, v) => sum + v);
}

/// ダミーデータ
final sampleRecords = [
  MScaleRecord(id: "MS25000001", date: DateTime.parse("2025-10-27 11:15:00"), answers: {"m001":5,"m002":4,"m003":1}, other: null),
  MScaleRecord(id: "MS25000002", date: DateTime.parse("2025-10-26 12:00:59"), answers: {"m001":4,"m002":4,"m003":2}, other: "疲れた"),
  MScaleRecord(id: "MS25000003", date: DateTime.parse("2025-11-24 01:23:04"), answers: {"m001":2,"m002":2,"m003":3}, other: null),
  MScaleRecord(id: "MS25000004", date: DateTime.parse("2025-11-25 01:23:04"), answers: {"m001":4,"m002":3,"m003":2}, other: null),
  MScaleRecord(id: "MS25000005", date: DateTime.parse("2025-11-26 01:23:04"), answers: {"m001":5,"m002":2,"m003":1}, other: null),
];

final items = List.generate(5, (i) => "m${(i + 1).toString().padLeft(3, '0')}");


/// メイン画面
class _MenuScaleDetailState extends State<MenuScaleDetail> {

  @override
  Widget build(BuildContext context) {

    final sortedRecords = List<MScaleRecord>.from(sampleRecords)
    ..sort((a, b) => a.date.compareTo(b.date)); // 日付昇順

    return Scaffold(
        appBar: AppBar(title: const Text("スケール詳細履歴")),
        body: Column(
          children: [
            const SizedBox(height: 12),

            // ----------------------
            // 上ウィジェット：記録一覧
            // ----------------------
            SizedBox(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: sortedRecords.map((r) {
                  String dateStr = DateFormat("yyyy/MM/dd HH:mm").format(r.date);
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => _DetailDialog(title: "Record: ${r.id}", record: r, content: dateStr),
                        ),
                      );
                    },
                    child: Container(
                      width: 140,
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(child: Text(dateStr+'\n'+r.id)),
                    ),
                  );
                }).toList(),
              ),
            ),

            const Divider(height: 30),

            // ----------------------
            // 下ウィジェット：項目一覧
            // ----------------------
            SizedBox(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: items.map((item) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              _GraphDialog(title: "$item：XXXXXX", records:sortedRecords, content: item),
                        ),
                      );
                    },
                    child: Container(
                      width: 100,
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(child: Text(item)),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
    );
  }
}

/// 詳細ページ
class _DetailDialog extends StatelessWidget {
  final String title;
  final MScaleRecord record;
  final String content;
  const _DetailDialog({required this.title, required this.record, required this.content});

  @override
  Widget build(BuildContext context) {
    return 
        Dialog(
        insetPadding: EdgeInsets.all(20), // 画面全体に広げる
        child: Stack(
          children: [
            // コンテンツ部分
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  record.id,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                Text("合計点: ${record.total}", style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 12),
                ...record.answers.entries.map((e) => Text("${e.key.toUpperCase()}: ${e.value}点")),
                if (record.other != null) ...[
                  const SizedBox(height: 12),
                  Text("OTHER: ${record.other}"),
                ]])
            ),
            // 右上の閉じるボタン
            Positioned(
              right: 0,
              top: 0,
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      );
  }
}

/// グラフ画面
class _GraphDialog extends StatelessWidget {
  final String title;
  final String content;
  final List<MScaleRecord> records;
  const _GraphDialog({required this.title, required this.records, required this.content});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.all(20),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: BarChart(
                    BarChartData(
                      maxY: 6,
                      barGroups: records.asMap().entries.map((entry) {
                        int idx = entry.key;
                        final value = entry.value.answers[content]!.toDouble();
                        return BarChartGroupData(
                          x: idx,
                          barRods: [BarChartRodData(toY: value, color: Colors.blue, width: 20)],
                        );
                      }).toList(),
                      titlesData: FlTitlesData(
                        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (val, meta) {
                              int idx = val.toInt();
                              if (idx >= 0 && idx < records.length) {
                                return Text(DateFormat("yyyy/MM/dd").format(records[idx].date), style: TextStyle(fontSize: 10));
                              }
                              return Text('');
                            },
                          ),
                        ),
                        leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, reservedSize: 28)),
                      ),
                      borderData: FlBorderData(show: false),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.grey.shade100,borderRadius: BorderRadius.circular(6),border: Border.all(color: Colors.grey.shade300),),
                  child: const Text("1: 違う   2: 少し違う   3: どちらともいえない   4: 少しあっている   5: あっている", style: TextStyle(fontSize: 12),)),
              ],
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: IconButton(icon: Icon(Icons.close), onPressed: () => Navigator.pop(context)),
          ),
        ],
      ),
    );
  }
}