INSERT INTO b_user_inf(user_id, user_name, corp_id, department, grade, gender, birth, career_yrs) VALUES
('S000000001','田中 太郎', '001', '001',10,'M','20200304',10);
INSERT INTO b_user_inf(user_id, user_name, corp_id, department, grade, gender, birth, career_yrs) VALUES
('S000000002','進藤 純一郎', '001', '001',10,'M','20200304',10);
INSERT INTO b_user_inf(user_id, user_name, corp_id, department, grade, gender, birth, career_yrs) VALUES
('S000000003','小林 エミ', '001', '001',10,'M','20200304',10);

INSERT INTO b_mental_scale(user_id, mscale_num, s_date, avg_score, max_score, min_score) VALUES
('S000000001','MS00000001',PARSEDATETIME('20251026111500000', 'yyyyMMddHHmmssSSS'),3.1,5,1);
INSERT INTO b_mental_scale(user_id, mscale_num, s_date, avg_score, max_score, min_score) VALUES
('S000000002','MS00000002',PARSEDATETIME('20251026100549999', 'yyyyMMddHHmmssSSS'),2.8,5,1);
INSERT INTO b_mental_scale(user_id, mscale_num, s_date, avg_score, max_score, min_score) VALUES
('S000000001','MS00000003',PARSEDATETIME('20251026120059999', 'yyyyMMddHHmmssSSS'),2.2,5,1);
INSERT INTO b_mental_scale_detail(mscale_num, s_date, scale01, scale02, scale03, scale04, scale05, scale06, scale07, scale08, scale09, scale10, scale11, scale12, scale13, scale14, scale15, scale16, scale17, scale18, scale19, scale20, other) VALUES
('MS00000001',PARSEDATETIME('20251026111500000', 'yyyyMMddHHmmssSSS'),'2','2','3','4','2','2','3','4','5','1','5','5','5','5','5','5','1','1','1','4','');
INSERT INTO b_mental_scale_detail(mscale_num, s_date, scale01, scale02, scale03, scale04, scale05, scale06, scale07, scale08, scale09, scale10, scale11, scale12, scale13, scale14, scale15, scale16, scale17, scale18, scale19, scale20, other) VALUES
('MS00000002',PARSEDATETIME('20251026100549999', 'yyyyMMddHHmmssSSS'),'5','2','3','4','1','2','3','4','5','1','2','3','5','5','5','2','1','1','1','4',null);
INSERT INTO b_mental_scale_detail(mscale_num, s_date, scale01, scale02, scale03, scale04, scale05, scale06, scale07, scale08, scale09, scale10, scale11, scale12, scale13, scale14, scale15, scale16, scale17, scale18, scale19, scale20, other) VALUES
('MS00000003',PARSEDATETIME('20251026120059999', 'yyyyMMddHHmmssSSS'),'5','2','3','4','1','2','3','4','5','1','1','1','1','1','1','1','2','2','2','2','最近疲れた');

INSERT INTO m_mental(ques_key,ques_detail) VALUES
('M001','非常にたくさんの仕事をしなければならない');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('M002','時間内に仕事が処理しきれない');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('M003','一生懸命働かなければならない');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('M004','かなり注意を集中する必要がある');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('M005','高度の知識や技術が必要なむずかしい仕事だ');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('M006','勤務時間中はいつも仕事のことを考えていなければならない');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('M007','からだを大変よく使う仕事だ');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('M008','自分のペースで仕事ができる');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('M009','自分で仕事の順番・やり方を決めることができる');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('M010','職場の仕事の方針に自分の意見を反映できる');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('M011','自分の技能や知識を仕事で使うことが少ない');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('M012','私の部署内で意見のくい違いがある');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('M013','私の部署と他の部署とはうまが合わない');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('M014','私の職場の雰囲気は友好的である');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('M015','私の職場の作業環境（騒音、照明、温度、換気など）はよくない');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('M016','仕事の内容は自分にあっている');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('M017','働きがいのある仕事だ');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('M018','食欲がない');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('M019','何をするのも面倒だ');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('M020','物事に集中できない');
