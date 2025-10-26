INSERT INTO b_user_inf(user_id, user_name, corp_id, department, grade, gender, birth, career_yrs) VALUES
('S000000001','田中 太郎', '001', '001',10,'M','20200304',10);
INSERT INTO b_user_inf(user_id, user_name, corp_id, department, grade, gender, birth, career_yrs) VALUES
('S000000002','進藤 純一郎', '001', '001',10,'M','20200304',10);
INSERT INTO b_user_inf(user_id, user_name, corp_id, department, grade, gender, birth, career_yrs) VALUES
('S000000003','小林 エミ', '001', '001',10,'M','20200304',10);

INSERT INTO b_mental_scale(user_id, mscale_num, s_date) VALUES
('S000000001','MS00000001',PARSEDATETIME('20251026111500000', 'yyyyMMddHHmmssSSS'));
INSERT INTO b_mental_scale(user_id, mscale_num, s_date) VALUES
('S000000002','MS00000002',PARSEDATETIME('20251026100549999', 'yyyyMMddHHmmssSSS'));
INSERT INTO b_mental_scale(user_id, mscale_num, s_date) VALUES
('S000000001','MS00000003',PARSEDATETIME('20251026120059999', 'yyyyMMddHHmmssSSS'));
INSERT INTO b_mental_scale_detail(mscale_num, s_date, scale1, scale2, scale3, scale4, scale5, scale6, scale7, scale8, scale9, scale10, scale11, scale12, scale13, scale14, scale15, scale16, scale17, scale18, scale19, scale20, other) VALUES
('MS00000001',PARSEDATETIME('20251026111500000', 'yyyyMMddHHmmssSSS'),'2','2','3','4','2','2','3','4','5','1','5','5','5','5','5','5','1','1','1','4','');
INSERT INTO b_mental_scale_detail(mscale_num, s_date, scale1, scale2, scale3, scale4, scale5, scale6, scale7, scale8, scale9, scale10, scale11, scale12, scale13, scale14, scale15, scale16, scale17, scale18, scale19, scale20, other) VALUES
('MS00000002',PARSEDATETIME('20251026100549999', 'yyyyMMddHHmmssSSS'),'5','2','3','4','1','2','3','4','5','1','2','3','5','5','5','2','1','1','1','4',null);
INSERT INTO b_mental_scale_detail(mscale_num, s_date, scale1, scale2, scale3, scale4, scale5, scale6, scale7, scale8, scale9, scale10, scale11, scale12, scale13, scale14, scale15, scale16, scale17, scale18, scale19, scale20, other) VALUES
('MS00000003',PARSEDATETIME('20251026120059999', 'yyyyMMddHHmmssSSS'),'5','2','3','4','1','2','3','4','5','1','1','1','1','1','1','1','2','2','2','2','最近疲れた');