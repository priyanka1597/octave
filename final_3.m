choice1=menu('location options',{'WIP PORTICO','Bhabha Point','South Gate','PRAFUL','Dhruva','Cirus','Mod. Labs','Computer Security','RLG Main Gate','RLG Back Gate','IF3','RUMP','NG Security','Mod. Lab C','CIRUS Jetty','Hall#7','Sea Side Security','CC Security','PP Security'});
choice2=menu('graph options',{'line graph','histogram','bar graph'});
choice3=menu('choose date',{'1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31'});
prompt1={'enter start time in HH:MM'};
ans1=inputdlg(prompt1,'input');
prompt2={'enter end time in HH:MM'};
ans2=inputdlg(prompt2,'input');
if(choice1 == 1)
 loc='WIP_Portico';
elseif(choice1 == 2)
 loc='Bhabha_Point';
elseif(choice1 == 3)
 loc='South_Gate';
elseif(choice1 == 4)
 loc='PRAFUL';
elseif(choice1 == 5)
 loc='Dhruva';
elseif(choice1 == 6)
 loc='Cirus';
elseif(choice1 == 7)
 loc='Mod._Labs';
elseif(choice1 == 8)
 loc='Computer_Security';
elseif(choice1 == 9)
 loc='RLG_Main_Gate';
elseif(choice1 == 10)
 loc='RLG_Back_Gate';
elseif(choice1 == 11)
 loc='IF3';
elseif(choice1 == 12)
 loc='RUMP';
elseif(choice1 == 13)
 loc='NG_Security';
elseif(choice1 == 14)
 loc='Mod._Lab_C';
elseif(choice1 == 15)
 loc='CIRUS_Jetty';
elseif(choice1 == 16)
 loc='Hall#7';
elseif(choice1 == 17)
 loc='Sea_Side_Security';
elseif(choice1 == 18)
 loc='CC_Security';
elseif(choice1 == 19)
 loc='PP_Security';
end

if(choice3 == 1)
 date='1/5/2016';
elseif(choice3 == 2)
 date='2/5/2016';
elseif(choice3 == 3)
 date='3/5/2016';
elseif(choice3 == 4)
 date='4/5/2016';
elseif(choice3 == 5)
 date='5/5/2016';
elseif(choice3 == 6)
 date='6/5/2016';
elseif(choice3 == 7)
 date='7/5/2016';
elseif(choice3 == 8)
 date='8/5/2016';
elseif(choice3 == 9)
 date='9/5/2016';
elseif(choice3 == 10)
 date='10/5/2016';
elseif(choice3 == 11)
 date='11/5/2016';
elseif(choice3 == 12)
 date='12/5/2016';
elseif(choice3 == 13)
 date='13/05/2016';
elseif(choice3 == 14)
 date='14/05/2016';
elseif(choice3 == 15)
 date='15/05/2016';
elseif(choice3 == 16)
 date='16/05/2016';
elseif(choice3 == 17)
 date='17/05/2016';
elseif(choice3 == 18)
 date='18/05/2016';
elseif(choice3 == 19)
 date='19/05/2016';
elseif(choice3 == 20)
 date='20/05/2016';
elseif(choice3 == 21)
 date='21/05/2016';
elseif(choice3 == 22)
 date='22/05/2016';
elseif(choice3 == 23)
 date='23/05/2016';
elseif(choice3 == 24)
 date='24/05/2016';
elseif(choice3 == 25)
 date='25/05/2016';
elseif(choice3 == 26)
 date='26/05/2016';
elseif(choice3 == 27)
 date='27/05/2016';
elseif(choice3 == 28)
 date='28/05/2016';
elseif(choice3 == 29)
 date='29/05/2016';
elseif(choice3 == 30)
 date='30/05/2016';
elseif(choice3 == 31)
 date='31/05/2016';
end

if((choice3==1)||(choice3==2)||(choice3==3)||(choice3==4)||(choice3==5)||(choice3==6)||(choice3==7)||(choice3==8)||(choice3==9)||(choice3==10))
  [a,b,c,d,e,f,g,h]=textread('lan_mod.txt', '%f %f %f %s %f %s %s %f');
elseif((choice3==11)||(choice3==12)||(choice3==13)||(choice3==14)||(choice3==15)||(choice3==16)||(choice3==17)||(choice3==18)||(choice3==19)||(choice3==20))
  [a,b,c,d,e,f,g,h]=textread('lan1_mod.txt', '%f %f %f %s %f %s %s %f');
elseif((choice3==21)||(choice3==22)||(choice3==23)||(choice3==24)||(choice3==25)||(choice3==26)||(choice3==27)||(choice3==28)||(choice3==29)||(choice3==30)||(choice3==31))
  [a,b,c,d,e,f,g,h]=textread('lan2_mod.txt', '%f %f %f %s %f %s %s %f');
end
 
si=size(a);
for i=1:si
 l=repmat(loc,i,1);
 date_1=repmat(date,i,1);
end
lo=cellstr(l);
date_mod=cellstr(date_1);
lo1=find(strcmp(d,lo)& strcmp(f,date_mod));
start_time_mod=str2double(strsplit(char(ans1),':'));
end_time_mod=str2double(strsplit(char(ans2),':'));
si1=size(lo1);
lo2=[];
for i=1:si1
    current_time=char(g(lo1(i,1),1));
    current_time_mod=str2double(strsplit(current_time,':'));
    if(current_time_mod(1,1)>start_time_mod(1,1) & current_time_mod(1,1)<end_time_mod(1,1))
        lo2=[lo2;lo1(i,1)];
    elseif(current_time_mod(1,1)==start_time_mod(1,1) & current_time_mod(1,2)>=start_time_mod(1,2))
        lo2=[lo2;lo1(i,1)];
    elseif(current_time_mod(1,1)==end_time_mod(1,1) & current_time_mod(1,2)<=end_time_mod(1,2))
        lo2=[lo2;lo1(i,1)];
    end
end
row_size=size(lo2,1);
loc_mod=[];
for j=1:row_size
  loc_mod(j,1)=c(lo2(j,1),1);
end
if(choice2 == 1)
 plot(loc_mod);
 xlabel('time');
 ylabel('radiation level');
 loc_title=regexprep(loc,'_',' ');
 title(strcat('Location :',loc_title,'  Date :',date));
 size_loc_mod=size(loc_mod,1);
 tick=[1 size_loc_mod];
 ticklabel=[char(ans1);char(ans2)];
 ticklabel_mod=cellstr(ticklabel);
 set(gca,'XTick',tick,'XTickLabel',ticklabel_mod');
elseif(choice2 == 2)
 hist(loc_mod);
 xlabel('radiation level');
 ylabel('values');
elseif(choice2 == 3)
 bar(loc_mod);
 xlabel('time');
 ylabel('radiation level');
 loc_title=regexprep(loc,'_',' ');
 title(strcat('Location :',loc_title,'  Date :',date));
 size_loc_mod=size(loc_mod,1);
 tick=[1 size_loc_mod];
 ticklabel=[char(ans1);char(ans2)];
 ticklabel_mod=cellstr(ticklabel);
 set(gca,'XTick',tick,'XTickLabel',ticklabel_mod');
end







 




 
