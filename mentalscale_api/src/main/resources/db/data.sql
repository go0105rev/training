INSERT INTO b_user_inf(user_id, user_name, mail_addr, corp_id, department, grade, gender, birth, career_yrs) VALUES
('S000000001', '田中 太郎', 'go@revale.co.jp', '000', '',0,'M','20200304',10);
INSERT INTO b_user_inf(user_id, user_name, mail_addr, corp_id, department, grade, gender, birth, career_yrs) VALUES
('S000000002', '進藤 純一郎', 'go@revale.co.jp', '000', '',0,'M','20200304',10);
INSERT INTO b_user_inf(user_id, user_name, mail_addr, corp_id, department, grade, gender, birth, career_yrs) VALUES
('S000000003', '小林 エミ', 'go@revale.co.jp', '000', '',0,'M','20200304',10);

INSERT INTO b_mental_scale(mscale_num, s_date, avg_score, max_score, min_score) VALUES
('MS00000001',PARSEDATETIME('20251026111500000', 'yyyyMMddHHmmssSSS'),3.1,5,1);
INSERT INTO b_mental_scale(mscale_num, s_date, avg_score, max_score, min_score) VALUES
('MS00000002',PARSEDATETIME('20251026100549999', 'yyyyMMddHHmmssSSS'),2.8,5,1);
INSERT INTO b_mental_scale(mscale_num, s_date, avg_score, max_score, min_score) VALUES
('MS00000003',PARSEDATETIME('20251026120059999', 'yyyyMMddHHmmssSSS'),2.2,5,1);
INSERT INTO b_mental_scale_detail(mscale_num, user_id, s_date, m001, m002, m003, m004, m005, m006, m007, m008, m009, m010, m011, m012, m013, m014, m015, m016, m017, m018, m019, m020, other) VALUES
('MS00000001','S000000001',PARSEDATETIME('20251026111500000', 'yyyyMMddHHmmssSSS'),'2','2','3','4','2','2','3','4','5','1','5','5','5','5','5','5','1','1','1','4','');
INSERT INTO b_mental_scale_detail(mscale_num, user_id, s_date, m001, m002, m003, m004, m005, m006, m007, m008, m009, m010, m011, m012, m013, m014, m015, m016, m017, m018, m019, m020, other) VALUES
('MS00000002','S000000002',PARSEDATETIME('20251026100549999', 'yyyyMMddHHmmssSSS'),'5','2','3','4','1','2','3','4','5','1','2','3','5','5','5','2','1','1','1','4',null);
INSERT INTO b_mental_scale_detail(mscale_num, user_id, s_date, m001, m002, m003, m004, m005, m006, m007, m008, m009, m010, m011, m012, m013, m014, m015, m016, m017, m018, m019, m020, other) VALUES
('MS00000003','S000000001',PARSEDATETIME('20251026120059999', 'yyyyMMddHHmmssSSS'),'5','2','3','4','1','2','3','4','5','1','1','1','1','1','1','1','2','2','2','2','最近疲れた');

INSERT INTO m_mental(ques_key,ques_detail) VALUES
('m001','非常にたくさんの仕事をしなければならない');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('m002','時間内に仕事が処理しきれない');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('m003','一生懸命働かなければならない');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('m004','かなり注意を集中する必要がある');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('m005','高度の知識や技術が必要なむずかしい仕事だ');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('m006','勤務時間中はいつも仕事のことを考えていなければならない');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('m007','からだを大変よく使う仕事だ');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('m008','自分のペースで仕事ができる');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('m009','自分で仕事の順番・やり方を決めることができる');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('m010','職場の仕事の方針に自分の意見を反映できる');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('m011','自分の技能や知識を仕事で使うことが少ない');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('m012','私の部署内で意見のくい違いがある');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('m013','私の部署と他の部署とはうまが合わない');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('m014','私の職場の雰囲気は友好的である');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('m015','私の職場の作業環境（騒音、照明、温度、換気など）はよくない');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('m016','仕事の内容は自分にあっている');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('m017','働きがいのある仕事だ');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('m018','食欲がない');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('m019','何をするのも面倒だ');
INSERT INTO m_mental(ques_key,ques_detail) VALUES
('m020','物事に集中できない');
