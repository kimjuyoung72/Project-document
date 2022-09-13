
drop table p_event;       --공연상세
drop table p_facility;     --공연장
--drop table p_enterprise;     --제작사
drop table p_festival;  --축제,홍보

create table p_event(

    mt20id	    VARCHAR2(10), --pk, not null	12	공연ID +
    prfnm	      VARCHAR2(100), --	공연명 +
    prfpdfrom	  VARCHAR2(10), --	공연시작일 +
    prfpdto	    VARCHAR2(10), --	공연종료일 +
    fcltynm	    VARCHAR2(100), --	공연시설명(공연장명) +
    prfcast	    VARCHAR2(100), --	공연출연진 +
    prfcrew	    VARCHAR2(30), --	공연제작진 +
    prfruntime	VARCHAR2(20), --	공연 런타임 +
    prfage	    VARCHAR2(20), --	공연 관람 연령 +
    entrpsnm	  VARCHAR2(50),	--제작사 +
    pcseguidance	VARCHAR2(50),	--티켓가격 +
    poster	    VARCHAR2(100), --	포스터이미지경로
    sty	        CLOB,		    -- 줄거리
    genrenm	    VARCHAR2(10), --	공연 장르명 +
    prfstate	  VARCHAR2(20), --	공연상태 +
    openrun	    VARCHAR2(1), --	오픈런
    styurl1	    VARCHAR2(100), --	소개이미지1
    styurl2	    VARCHAR2(100), --	소개이미지2
    styurl3	    VARCHAR2(100), --	소개이미지3
    styurl4	    VARCHAR2(100), --	소개이미지4
    mt10id	    VARCHAR2(10), --	공연시설ID 
    dtguidance	VARCHAR2(100) --	공연시간 +
);
alter table p_event add constraint p_event_mt20id_pk primary key(mt20id);
--alter table p_event add constraint p_event_mt10id_fk foreign key(mt10id) references p_facility(mt10id);

insert into p_event (mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,
          genrenm,prfstate,mt10id,prfcast,prfruntime,prfage,entrpsnm,pcseguidance,dtguidance) values 
          ('PF197254','제2회 리틀 아티스트 콘서트','2022.08.29','2022.08.29','롯데콘서트홀',
          '클래식','공연완료','FC001513','변지민, 이채은, 전재인, 조별 등','1시간 50분','만 7세 이상','','20,000원','월요일(11:30)');
insert into p_event (mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,
          genrenm,prfstate,mt10id,prfcast,prfruntime,prfage,entrpsnm,pcseguidance,dtguidance) values 
          ('PF197222','심포니 송 챔버뮤직 시리즈 Ⅲ, Summer Chamber Music Festival','2022.08.29','2022.08.29','일신홀',
          '클래식','공연완료','FC001629','박병진, 유요한, 장서원, 손혁진 등','1시간 20분','만 7세 이상','','20,000원','월요일(19:30)');
insert into p_event (mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,
          genrenm,prfstate,mt10id,prfcast,prfruntime,prfage,entrpsnm,pcseguidance,dtguidance) values 
          ('PF197218','SAC on screen, 굿모닝 독도 [제주]','2022.08.26','2022.09.06','제주문예회관',
          '뮤지컬','공연중','FC000260','','1시간 50분','만 5세 이상','','무료','화요일(15:00)');
insert into p_event (mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,
          genrenm,prfstate,mt10id,prfcast,prfruntime,prfage,entrpsnm,pcseguidance,dtguidance) values 
          ('PF197207','찾아가는 Let’s DMZ [이천]','2022.08.27','2022.08.27','이천아트홀',
          '복합','공연완료','FC000824','송창진, 장원진, 문미경, 오빛나 등','1시간 20분','만 7세 이상','','15,000원','토요일(15:00)');
insert into p_event (mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,
          genrenm,prfstate,mt10id,prfcast,prfruntime,prfage,entrpsnm,pcseguidance,dtguidance) values 
          ('PF197197','우리 소리 축제 하하하, 안해본소리 프로젝트','2022.08.26','2022.08.26','대전시립연정국악원',
          '국악','공연완료','FC001415','','1시간 30분','만 7세 이상','','무료','금요일(19:30)');
insert into p_event (mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,
          genrenm,prfstate,mt10id,prfcast,prfruntime,prfage,entrpsnm,pcseguidance,dtguidance) values 
          ('PF197161','동,서양의 음악을 핫하고 힙하게!','2022.08.30','2022.08.30','고양아람누리',
          '복합','공연중','FC000127','이은진, 김도아, 홍아람, 김태훈 등','1시간 20분','만 6세 이상','','무료','화요일(19:30)');
insert into p_event (mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,
          genrenm,prfstate,mt10id,prfcast,prfruntime,prfage,entrpsnm,pcseguidance,dtguidance) values 
          ('PF197155','님만헤민 게스트하우스','2022.08.26','2022.09.18','소극장 혜화당(구. 까망소극장)',
          '연극','공연중','FC001085','이재섭, 김자미, 차은진, 조효준 등','1시간 40분','전체 관람가','','20,000원','화요일 ~ 금요일(19:30), 토요일(16:00), 일요일(15:00), HOL(15:00)');
insert into p_event (mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,
          genrenm,prfstate,mt10id,prfcast,prfruntime,prfage,entrpsnm,pcseguidance,dtguidance) values 
          ('PF197146','유니온 오케스트라 정기연주회','2022.08.28','2022.08.28','고양어울림누리',
          '클래식','공연완료','FC000819','강채율, 김민채, 김민희, 김서영 등','2시간','만 3세 이상','','무료','일요일(17:00)');
insert into p_event (mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,
          genrenm,prfstate,mt10id,prfcast,prfruntime,prfage,entrpsnm,pcseguidance,dtguidance) values 
          ('PF197127','내 모든걸','2022.08.25','2022.11.13','문화예술전용극장CT',
          '연극','공연중','FC000292','','1시간 40분','만 7세 이상','','40,000','화요일 ~ 금요일(19:30), 토요일(15:00,18:00), 일요일(14:00), HOL(14:00,17:00)');
insert into p_event (mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,
          genrenm,prfstate,mt10id,prfcast,prfruntime,prfage,pcseguidance,dtguidance) values 
          ('PF197126','제36회 별망성 전국학생 음협 콩쿠르 수상자음악회','2022.08.27','2022.08.27','안산문화예술의전당',
          '클래식','공연완료','FC000018','','','전체 관람가','무료','토요일(14:00,15:00,16:00)');
          
create table p_facility(
    mt10id	    VARCHAR2(10), --	pk, fk, 공연시설ID
    fcltynm	    VARCHAR2(100), --	fk, 공연시설명
    mt13cnt	    VARCHAR2(5), --	공연장 수
    fcltychartr	VARCHAR2(30), --	시설특성
    seatscale	  VARCHAR2(10), --	5	객석 수
    telno	      VARCHAR2(15), --	전화번호
    relateurl	  VARCHAR2(100), --	홈페이지
    adres	      VARCHAR2(120), --	주소
    opende	    VARCHAR2(6), --	개관연도
    la	        VARCHAR2(20), --	위도
    lo	        VARCHAR2(25) --	경도

);
alter table p_facility add constraint p_facility_mt10id_pk primary key(mt10id);

insert into p_facility values ('FC001513','롯데콘서트홀',1,'민간(대학로 외)',2036,
                '00-1544-7744','http://www.lotteconcerthall.com/',
                '서울특별시 송파구 올림픽로 300 (신천동) 롯데월드몰 8층 롯데문화재단'
                ,2016,'37.5130605','127.103495');
insert into p_facility values ('FC001629','일신홀',1,'민간(대학로 외)',189,
                '02-790-3364','http://ilshinhall.com/',
                '서울특별시 용산구 한남대로 98 (한남동)',2009,'37.5372055','127.005523');
insert into p_facility values ('FC000260','제주문예회관',2,'공공(문예회관)',998,
                '064-710-7641','http://www.jeju.go.kr/jejuculture/index.htm',
                '제주특별자치도 제주시 동광로 69 (일도이동)',1988,'33.504308','126.535385');
insert into p_facility values ('FC000824','이천아트홀',3,'공공(문예회관)',1651,
                '031-644-2100','https://art.icheon.go.kr/files/intro_02_01.php',
                '경기도 이천시 부악로 40 (중리동)',2009,'37.271191','127.434348');
insert into p_facility values ('FC001415','대전시립연정국악원',2,'공공(문예회관)',1088,
                '042-270-8500','https://www.daejeon.go.kr/kmusic/',
                '대전광역시 서구 둔산대로 181 (만년동)',2015,'36.355551','127.389945');
insert into p_facility values ('FC000127','고양아람누리',5,'공공(문예회관)',4640,
                '00-1577-7766','http://www.artgy.or.kr/aram/introduction.aspx',
                '경기도 고양시 일산동구 중앙로 1286 (마두동) 고양아람누리',2007,
                '37.6614074','126.774337');
insert into p_facility values ('FC001085','소극장 혜화당(구. 까망소극장)',1,'민간(대학로)'
                ,115,'02-742-1505','http://blog.naver.com/hehwadang',
                '서울특별시 종로구 대학로12길 63 (동숭동)',1993,'37.5812279','127.003911');
insert into p_facility values ('FC000819','고양어울림누리',3,'공공(문예회관)',2156,
                '00-1577-7766','http://www.artgy.or.kr/',
                '경기도 고양시 덕양구 어울림로 33 (성사동)',2004,'37.6498532','126.834984');
insert into p_facility values ('FC000292','문화예술전용극장CT',1,'민간(대학로 외)',270,
                '031-481-4000','http://cafe.daum.net/artCT/',
                '대구광역시 중구 중앙대로 394 (남일동)',2007,'35.868322','128.594013');
insert into p_facility values ('FC000018','안산문화예술의전당',4,'공공(문예회관)',3445,
                '031-481-4000','http://www.ansanart.com/',
                '경기도 안산시 단원구 화랑로 312 (고잔동)',2004,'37.3196723','126.822555');                
insert into p_facility values ('FC001685','강동문화복지회관',3,'공공(문예회관)',1217,
                '054-480-2990','http://www.gumi.go.kr/artsgd/contents.do?mId=0104040000',
                '경상북도 구미시 인동가산로 392 (구평동) 강동문화복지회관',2017,'36.0904747','128.454932');
insert into p_facility values ('FC001532','민들레연극마을',1,'공공(기타)',100,
                '031-358-7587','http://www.mdl.or.kr/home/',
                '경기도 화성시 우정읍 이화뱅곳길 22',2007,'37.0378517','126.798072');
insert into p_facility values ('FC001575','JCC 아트센터',4,'민간(대학로)',175,
                '02-2138-7373','http://www.jeijcc.org/intro.html',
                '서울특별시 종로구 창경궁로35길 29 (혜화동) JCC 아트센터',2015,'37.5869508','127.001726');
insert into p_facility values ('FC001556','금호아트홀 연세',1,'민간(대학로 외)',390,
                '02-6303-1977','http://www.kumhoarthall.com/',
                '서울특별시 서대문구 연세로 50 (신촌동) 연세대학교 백양누리 B1 금호아트홀 연세',
                2015,'37.564089','126.938980');
insert into p_facility values ('FC000320','유스퀘어 문화관',2,'민간(대학로 외)',559,
                '062-360-8434','http://www.usquareculture.co.kr/',
                '광주광역시 서구 무진대로 904 (광천동)',2009,'35.1603307','126.879339');
insert into p_facility values ('FC000879','거창문화센터',2,'공공(문예회관)',1015,
                '055-940-8460','http://www.gccf.or.kr/bbs/page.php?hid=D_1_2',
                '경상남도 거창군 수남로 2181 거창군교육문화센터',2001,'35.6742953','127.910316');

        
--create table p_enterprise(
--    mt30id	    VARCHAR2(10), -- pk,	기획/제작사ID +
--    prfnm	      VARCHAR2(30), --	최신작품
--    entrpsnm	  VARCHAR2(20), -- fk,	기획/제작사명 +
--    genrenm	    VARCHAR2(10), -- fk,	장르
--    telno	      VARCHAR2(15), --	전화번호  +
--    relateurl	  VARCHAR2(30) --	홈페이지  +
--);
--alter table p_enterprise add constraint enterprise_mt30id_pk primary key(mt30id);
--
--insert into p_enterprise(mt30id,entrpsnm,telno,relateurl) values (,,,);

create table p_festival(
    mt20id	    VARCHAR2(12), --	공연ID 
    prfnm	      VARCHAR2(100), --	공연명
    prfpdfrom	  VARCHAR2(10), --	공연시작일
    prfpdto	    VARCHAR2(10), --	공연종료일
    fcltynm	    VARCHAR2(100), --	공연시설명(공연장명)
    poster	    VARCHAR2(100), --	포스터이미지경로
    genrenm	    VARCHAR2(10), --	공연 장르명
    prfstate	  VARCHAR2(15), --	공연상태
    festival	  VARCHAR2(1) --	축제여부 -

);
alter table p_festival add constraint enterprise_mt20id_pk primary key(mt20id);

insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate)
      values ('PF196775','거주자 우선 주차구역','2022.09.02','2022.09.04','안산문화예술의전당',
      'http://www.kopis.or.kr/upload/pfmPoster/PF_PF196775_220822_150523.gif','연극','공연예정');
insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate) 
      values ('PF195404','라흐마니노프','2022.09.03','2022.09.03','세종국악당',
      'http://www.kopis.or.kr/upload/pfmPoster/PF_PF195404_220728_150138.gif','뮤지컬','공연예정');
insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate) 
      values ('PF194579','엄마까투리: 마트에 간 꽁지','2022.10.22','2022.10.23','5.18기념문화센터',
      'http://www.kopis.or.kr/upload/pfmPoster/PF_PF194579_220714_101038.gif','뮤지컬','공연예정');
insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate) 
      values ('PF194466','엄마까투리: 마트에 간 꽁지','2022.09.17','2022.09.18','세종문화예술회관',
      'http://www.kopis.or.kr/upload/pfmPoster/PF_PF194466_220712_135225.gif','뮤지컬','공연예정');
insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate) 
      values ('PF194302','엄마까투리: 마트에 간 꽁지','2022.10.08','2022.10.09','대구보건대 인당아트홀',
      'http://www.kopis.or.kr/upload/pfmPoster/PF_PF194302_220708_150108.gif','뮤지컬','공연예정');
insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate) 
      values ('PF194076','엄마까투리: 마트에 간 꽁지','2022.09.24','2022.09.25','복사골문화센터',
      'http://www.kopis.or.kr/upload/pfmPoster/PF_PF194076_220705_125449.gif','뮤지컬','공연예정');
insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate) 
      values ('PF193042','서편제','2022.08.12','2022.10.23','광림아트센터',
      'http://www.kopis.or.kr/upload/pfmPoster/PF_PF193042_220620_093340.gif','뮤지컬','공연중');
insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate) 
      values ('PF192872','엄마 까투리: 마트에 간 꽁지 [춘천]','2022.09.03','2022.09.04','강원대학교 백령아트센터',
      'http://www.kopis.or.kr/upload/pfmPoster/PF_PF192872_220615_125612.gif','뮤지컬','공연예정');
insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate) 
      values ('PF185308','두들팝 [서울]','2022.01.22','2022.10.31','신한pLay 스퀘어 (구. 신한카드 판스퀘어)',
      'http://www.kopis.or.kr/upload/pfmPoster/PF_PF185308_211230_111207.gif','뮤지컬','공연중');
insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate) 
      values ('PF180108','빨래','2021.11.05','2023.01.29','유니플렉스',
      'ttp://www.kopis.or.kr/upload/pfmPoster/PF_PF180108_220513_095237.gif','뮤지컬','공연중');
insert into p_festival(mt20id,prfnm,prfpdfrom,prfpdto,fcltynm,poster,genrenm,prfstate) 
      values ('PF178909','뚝딱하니 어흥','2021.08.31','2022.09.30','해오름 예술극장',
      'http://www.kopis.or.kr/upload/pfmPoster/PF_PF178909_210826_103352.jpg','뮤지컬','공연중');
 
--조회
select * from p_event;
select * --22.8.25 ~ 22.8.31 사이에 하는 공연정보
  from p_event
 where '2022/08/25' <= to_date(prfpdfrom) and to_date(prfpdto) <= '2022/08/31';
select prfnm, fcltynm
  from p_event
 where prfnm like '%연주회%';
select *
  from p_event
 where fcltynm like '%아트홀%';
select prfnm, fcltynm
  from p_event
 where prfage like '%전체%관람가%';
select * from p_facility;
select t1.prfnm, t2.fcltynm, t2.adres --만7세이상 관람가인 공연의 제목과 공연장명, 주소.
  from p_event t1, p_facility t2
 where t1.mt10id = t2.mt10id
   and t1.prfage like '%7%';
select * from p_festival;
--수정
update p_event
   set prfpdfrom = '2022.09.01',
       prfpdto = '2022.09.02'
 where prfnm like '%제2회%리틀%아티스트%콘서트'
   and fcltynm like '%롯데%콘서트홀%';
select *
  from p_event
 where fcltynm like '%롯데%콘서트홀%';

commit;

--삭제
delete 
  from p_event
 where mt20id = 'PF197254';
 
select * from p_event;
delete from p_event;
select * from p_facility;
delete from p_facility;
commit;
rollback;
