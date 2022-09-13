
drop table p_event;       --������
drop table p_facility;     --������
--drop table p_enterprise;     --���ۻ�
drop table p_festival;  --����,ȫ��

create table p_event(

    mt20id	    VARCHAR2(10), --pk, not null	12	����ID +
    prfnm	      VARCHAR2(100), --	������ +
    prfpdfrom	  VARCHAR2(10), --	���������� +
    prfpdto	    VARCHAR2(10), --	���������� +
    fcltynm	    VARCHAR2(100), --	�����ü���(�������) +
    prfcast	    VARCHAR2(100), --	�����⿬�� +
    prfcrew	    VARCHAR2(30), --	���������� +
    prfruntime	VARCHAR2(20), --	���� ��Ÿ�� +
    prfage	    VARCHAR2(20), --	���� ���� ���� +
    entrpsnm	  VARCHAR2(50),	--���ۻ� +
    pcseguidance	VARCHAR2(50),	--Ƽ�ϰ��� +
    poster	    VARCHAR2(100), --	�������̹������
    sty	        CLOB,		    -- �ٰŸ�
    genrenm	    VARCHAR2(10), --	���� �帣�� +
    prfstate	  VARCHAR2(20), --	�������� +
    openrun	    VARCHAR2(1), --	���·�
    styurl1	    VARCHAR2(100), --	�Ұ��̹���1
    styurl2	    VARCHAR2(100), --	�Ұ��̹���2
    styurl3	    VARCHAR2(100), --	�Ұ��̹���3
    styurl4	    VARCHAR2(100), --	�Ұ��̹���4
    mt10id	    VARCHAR2(10), --	�����ü�ID 
    dtguidance	VARCHAR2(100) --	�����ð� +
);
alter table p_event add constraint p_event_mt20id_pk primary key(mt20id);
--alter table p_event add constraint p_event_mt10id_fk foreign key(mt10id) references p_facility(mt10id);

insert into p_event (mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,
          genrenm,prfstate,mt10id,prfcast,prfruntime,prfage,entrpsnm,pcseguidance,dtguidance) values 
          ('PF197254','��2ȸ ��Ʋ ��Ƽ��Ʈ �ܼ�Ʈ','2022.08.29','2022.08.29','�Ե��ܼ�ƮȦ',
          'Ŭ����','�����Ϸ�','FC001513','������, ��ä��, ������, ���� ��','1�ð� 50��','�� 7�� �̻�','','20,000��','������(11:30)');
insert into p_event (mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,
          genrenm,prfstate,mt10id,prfcast,prfruntime,prfage,entrpsnm,pcseguidance,dtguidance) values 
          ('PF197222','������ �� è������ �ø��� ��, Summer Chamber Music Festival','2022.08.29','2022.08.29','�Ͻ�Ȧ',
          'Ŭ����','�����Ϸ�','FC001629','�ں���, ������, �弭��, ������ ��','1�ð� 20��','�� 7�� �̻�','','20,000��','������(19:30)');
insert into p_event (mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,
          genrenm,prfstate,mt10id,prfcast,prfruntime,prfage,entrpsnm,pcseguidance,dtguidance) values 
          ('PF197218','SAC on screen, �¸�� ���� [����]','2022.08.26','2022.09.06','���ֹ���ȸ��',
          '������','������','FC000260','','1�ð� 50��','�� 5�� �̻�','','����','ȭ����(15:00)');
insert into p_event (mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,
          genrenm,prfstate,mt10id,prfcast,prfruntime,prfage,entrpsnm,pcseguidance,dtguidance) values 
          ('PF197207','ã�ư��� Let��s DMZ [��õ]','2022.08.27','2022.08.27','��õ��ƮȦ',
          '����','�����Ϸ�','FC000824','��â��, �����, ���̰�, ������ ��','1�ð� 20��','�� 7�� �̻�','','15,000��','�����(15:00)');
insert into p_event (mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,
          genrenm,prfstate,mt10id,prfcast,prfruntime,prfage,entrpsnm,pcseguidance,dtguidance) values 
          ('PF197197','�츮 �Ҹ� ���� ������, ���غ��Ҹ� ������Ʈ','2022.08.26','2022.08.26','�����ø��������ǿ�',
          '����','�����Ϸ�','FC001415','','1�ð� 30��','�� 7�� �̻�','','����','�ݿ���(19:30)');
insert into p_event (mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,
          genrenm,prfstate,mt10id,prfcast,prfruntime,prfage,entrpsnm,pcseguidance,dtguidance) values 
          ('PF197161','��,������ ������ ���ϰ� ���ϰ�!','2022.08.30','2022.08.30','���ƶ�����',
          '����','������','FC000127','������, �赵��, ȫ�ƶ�, ������ ��','1�ð� 20��','�� 6�� �̻�','','����','ȭ����(19:30)');
insert into p_event (mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,
          genrenm,prfstate,mt10id,prfcast,prfruntime,prfage,entrpsnm,pcseguidance,dtguidance) values 
          ('PF197155','�Ը���� �Խ�Ʈ�Ͽ콺','2022.08.26','2022.09.18','�ұ��� ��ȭ��(��. ����ұ���)',
          '����','������','FC001085','���缷, ���ڹ�, ������, ��ȿ�� ��','1�ð� 40��','��ü ������','','20,000��','ȭ���� ~ �ݿ���(19:30), �����(16:00), �Ͽ���(15:00), HOL(15:00)');
insert into p_event (mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,
          genrenm,prfstate,mt10id,prfcast,prfruntime,prfage,entrpsnm,pcseguidance,dtguidance) values 
          ('PF197146','���Ͽ� ���ɽ�Ʈ�� ���⿬��ȸ','2022.08.28','2022.08.28','����︲����',
          'Ŭ����','�����Ϸ�','FC000819','��ä��, ���ä, �����, �輭�� ��','2�ð�','�� 3�� �̻�','','����','�Ͽ���(17:00)');
insert into p_event (mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,
          genrenm,prfstate,mt10id,prfcast,prfruntime,prfage,entrpsnm,pcseguidance,dtguidance) values 
          ('PF197127','�� ����','2022.08.25','2022.11.13','��ȭ�����������CT',
          '����','������','FC000292','','1�ð� 40��','�� 7�� �̻�','','40,000','ȭ���� ~ �ݿ���(19:30), �����(15:00,18:00), �Ͽ���(14:00), HOL(14:00,17:00)');
insert into p_event (mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,
          genrenm,prfstate,mt10id,prfcast,prfruntime,prfage,pcseguidance,dtguidance) values 
          ('PF197126','��36ȸ ������ �����л� ���� ���� ����������ȸ','2022.08.27','2022.08.27','�Ȼ깮ȭ����������',
          'Ŭ����','�����Ϸ�','FC000018','','','��ü ������','����','�����(14:00,15:00,16:00)');
          
create table p_facility(
    mt10id	    VARCHAR2(10), --	pk, fk, �����ü�ID
    fcltynm	    VARCHAR2(100), --	fk, �����ü���
    mt13cnt	    VARCHAR2(5), --	������ ��
    fcltychartr	VARCHAR2(30), --	�ü�Ư��
    seatscale	  VARCHAR2(10), --	5	���� ��
    telno	      VARCHAR2(15), --	��ȭ��ȣ
    relateurl	  VARCHAR2(100), --	Ȩ������
    adres	      VARCHAR2(120), --	�ּ�
    opende	    VARCHAR2(6), --	��������
    la	        VARCHAR2(20), --	����
    lo	        VARCHAR2(25) --	�浵

);
alter table p_facility add constraint p_facility_mt10id_pk primary key(mt10id);

insert into p_facility values ('FC001513','�Ե��ܼ�ƮȦ',1,'�ΰ�(���з� ��)',2036,
                '00-1544-7744','http://www.lotteconcerthall.com/',
                '����Ư���� ���ı� �ø��ȷ� 300 (��õ��) �Ե������ 8�� �Ե���ȭ���'
                ,2016,'37.5130605','127.103495');
insert into p_facility values ('FC001629','�Ͻ�Ȧ',1,'�ΰ�(���з� ��)',189,
                '02-790-3364','http://ilshinhall.com/',
                '����Ư���� ��걸 �ѳ���� 98 (�ѳ���)',2009,'37.5372055','127.005523');
insert into p_facility values ('FC000260','���ֹ���ȸ��',2,'����(����ȸ��)',998,
                '064-710-7641','http://www.jeju.go.kr/jejuculture/index.htm',
                '����Ư����ġ�� ���ֽ� ������ 69 (�ϵ��̵�)',1988,'33.504308','126.535385');
insert into p_facility values ('FC000824','��õ��ƮȦ',3,'����(����ȸ��)',1651,
                '031-644-2100','https://art.icheon.go.kr/files/intro_02_01.php',
                '��⵵ ��õ�� �ξǷ� 40 (�߸���)',2009,'37.271191','127.434348');
insert into p_facility values ('FC001415','�����ø��������ǿ�',2,'����(����ȸ��)',1088,
                '042-270-8500','https://www.daejeon.go.kr/kmusic/',
                '���������� ���� �л��� 181 (���⵿)',2015,'36.355551','127.389945');
insert into p_facility values ('FC000127','���ƶ�����',5,'����(����ȸ��)',4640,
                '00-1577-7766','http://www.artgy.or.kr/aram/introduction.aspx',
                '��⵵ ���� �ϻ굿�� �߾ӷ� 1286 (���ε�) ���ƶ�����',2007,
                '37.6614074','126.774337');
insert into p_facility values ('FC001085','�ұ��� ��ȭ��(��. ����ұ���)',1,'�ΰ�(���з�)'
                ,115,'02-742-1505','http://blog.naver.com/hehwadang',
                '����Ư���� ���α� ���з�12�� 63 (������)',1993,'37.5812279','127.003911');
insert into p_facility values ('FC000819','����︲����',3,'����(����ȸ��)',2156,
                '00-1577-7766','http://www.artgy.or.kr/',
                '��⵵ ���� ���籸 ��︲�� 33 (���絿)',2004,'37.6498532','126.834984');
insert into p_facility values ('FC000292','��ȭ�����������CT',1,'�ΰ�(���з� ��)',270,
                '031-481-4000','http://cafe.daum.net/artCT/',
                '�뱸������ �߱� �߾Ӵ�� 394 (���ϵ�)',2007,'35.868322','128.594013');
insert into p_facility values ('FC000018','�Ȼ깮ȭ����������',4,'����(����ȸ��)',3445,
                '031-481-4000','http://www.ansanart.com/',
                '��⵵ �Ȼ�� �ܿ��� ȭ���� 312 (���ܵ�)',2004,'37.3196723','126.822555');                
insert into p_facility values ('FC001685','������ȭ����ȸ��',3,'����(����ȸ��)',1217,
                '054-480-2990','http://www.gumi.go.kr/artsgd/contents.do?mId=0104040000',
                '���ϵ� ���̽� �ε������ 392 (����) ������ȭ����ȸ��',2017,'36.0904747','128.454932');
insert into p_facility values ('FC001532','�ε鷹���ظ���',1,'����(��Ÿ)',100,
                '031-358-7587','http://www.mdl.or.kr/home/',
                '��⵵ ȭ���� ������ ��ȭ����� 22',2007,'37.0378517','126.798072');
insert into p_facility values ('FC001575','JCC ��Ʈ����',4,'�ΰ�(���з�)',175,
                '02-2138-7373','http://www.jeijcc.org/intro.html',
                '����Ư���� ���α� â��÷�35�� 29 (��ȭ��) JCC ��Ʈ����',2015,'37.5869508','127.001726');
insert into p_facility values ('FC001556','��ȣ��ƮȦ ����',1,'�ΰ�(���з� ��)',390,
                '02-6303-1977','http://www.kumhoarthall.com/',
                '����Ư���� ���빮�� ������ 50 (���̵�) �������б� ��紩�� B1 ��ȣ��ƮȦ ����',
                2015,'37.564089','126.938980');
insert into p_facility values ('FC000320','�������� ��ȭ��',2,'�ΰ�(���з� ��)',559,
                '062-360-8434','http://www.usquareculture.co.kr/',
                '���ֱ����� ���� ������� 904 (��õ��)',2009,'35.1603307','126.879339');
insert into p_facility values ('FC000879','��â��ȭ����',2,'����(����ȸ��)',1015,
                '055-940-8460','http://www.gccf.or.kr/bbs/page.php?hid=D_1_2',
                '��󳲵� ��â�� ������ 2181 ��â��������ȭ����',2001,'35.6742953','127.910316');

        
--create table p_enterprise(
--    mt30id	    VARCHAR2(10), -- pk,	��ȹ/���ۻ�ID +
--    prfnm	      VARCHAR2(30), --	�ֽ���ǰ
--    entrpsnm	  VARCHAR2(20), -- fk,	��ȹ/���ۻ�� +
--    genrenm	    VARCHAR2(10), -- fk,	�帣
--    telno	      VARCHAR2(15), --	��ȭ��ȣ  +
--    relateurl	  VARCHAR2(30) --	Ȩ������  +
--);
--alter table p_enterprise add constraint enterprise_mt30id_pk primary key(mt30id);
--
--insert into p_enterprise(mt30id,entrpsnm,telno,relateurl) values (,,,);

create table p_festival(
    mt20id	    VARCHAR2(12), --	����ID 
    prfnm	      VARCHAR2(100), --	������
    prfpdfrom	  VARCHAR2(10), --	����������
    prfpdto	    VARCHAR2(10), --	����������
    fcltynm	    VARCHAR2(100), --	�����ü���(�������)
    poster	    VARCHAR2(100), --	�������̹������
    genrenm	    VARCHAR2(10), --	���� �帣��
    prfstate	  VARCHAR2(15), --	��������
    festival	  VARCHAR2(1) --	�������� -

);
alter table p_festival add constraint enterprise_mt20id_pk primary key(mt20id);

insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate)
      values ('PF196775','������ �켱 ��������','2022.09.02','2022.09.04','�Ȼ깮ȭ����������',
      'http://www.kopis.or.kr/upload/pfmPoster/PF_PF196775_220822_150523.gif','����','��������');
insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate) 
      values ('PF195404','���帶�ϳ���','2022.09.03','2022.09.03','�������Ǵ�',
      'http://www.kopis.or.kr/upload/pfmPoster/PF_PF195404_220728_150138.gif','������','��������');
insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate) 
      values ('PF194579','����������: ��Ʈ�� �� ����','2022.10.22','2022.10.23','5.18��乮ȭ����',
      'http://www.kopis.or.kr/upload/pfmPoster/PF_PF194579_220714_101038.gif','������','��������');
insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate) 
      values ('PF194466','����������: ��Ʈ�� �� ����','2022.09.17','2022.09.18','������ȭ����ȸ��',
      'http://www.kopis.or.kr/upload/pfmPoster/PF_PF194466_220712_135225.gif','������','��������');
insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate) 
      values ('PF194302','����������: ��Ʈ�� �� ����','2022.10.08','2022.10.09','�뱸���Ǵ� �δ��ƮȦ',
      'http://www.kopis.or.kr/upload/pfmPoster/PF_PF194302_220708_150108.gif','������','��������');
insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate) 
      values ('PF194076','����������: ��Ʈ�� �� ����','2022.09.24','2022.09.25','�����ȭ����',
      'http://www.kopis.or.kr/upload/pfmPoster/PF_PF194076_220705_125449.gif','������','��������');
insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate) 
      values ('PF193042','������','2022.08.12','2022.10.23','������Ʈ����',
      'http://www.kopis.or.kr/upload/pfmPoster/PF_PF193042_220620_093340.gif','������','������');
insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate) 
      values ('PF192872','���� ������: ��Ʈ�� �� ���� [��õ]','2022.09.03','2022.09.04','�������б� ��ɾ�Ʈ����',
      'http://www.kopis.or.kr/upload/pfmPoster/PF_PF192872_220615_125612.gif','������','��������');
insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate) 
      values ('PF185308','�ε��� [����]','2022.01.22','2022.10.31','����pLay ������ (��. ����ī�� �ǽ�����)',
      'http://www.kopis.or.kr/upload/pfmPoster/PF_PF185308_211230_111207.gif','������','������');
insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate) 
      values ('PF180108','����','2021.11.05','2023.01.29','�����÷���',
      'ttp://www.kopis.or.kr/upload/pfmPoster/PF_PF180108_220513_095237.gif','������','������');
insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate) 
      values ('PF178909','�ҵ��ϴ� ����','2021.08.31','2022.09.30','�ؿ��� ��������',
      'http://www.kopis.or.kr/upload/pfmPoster/PF_PF178909_210826_103352.jpg','������','������');
 
--��ȸ
select * from p_event;
select * --22.8.25 ~ 22.8.31 ���̿� �ϴ� ��������
  from p_event
 where '2022/08/25' <= to_date(prfpdfrom) and to_date(prfpdto) <= '2022/08/31';
select prfnm, fcltynm
  from p_event
 where prfnm like '%����ȸ%';
select *
  from p_event
 where fcltynm like '%��ƮȦ%';
select prfnm, fcltynm
  from p_event
 where prfage like '%��ü%������%';
select * from p_facility;
select t1.prfnm, t2.fcltynm, t2.adres --��7���̻� �������� ������ ����� �������, �ּ�.
  from p_event t1, p_facility t2
 where t1.mt10id = t2.mt10id
   and t1.prfage like '%7%';
select * from p_festival;
--����
update p_event
   set prfpdfrom = '2022.09.01',
       prfpdto = '2022.09.02'
 where prfnm like '%��2ȸ%��Ʋ%��Ƽ��Ʈ%�ܼ�Ʈ'
   and fcltynm like '%�Ե�%�ܼ�ƮȦ%';
select *
  from p_event
 where fcltynm like '%�Ե�%�ܼ�ƮȦ%';

commit;

--����
delete 
  from p_event
 where mt20id = 'PF197254';
 
select * from p_event;
delete from p_event;
select * from p_facility;
delete from p_facility;
commit;
rollback;
