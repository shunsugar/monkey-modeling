close all;clear all
gr=groot;gr.ShowHiddenHandles='on';

%-------------------- figure --------------------%
fig=uifigure;
sub22(1)=uiaxes(fig);
sub22(2)=uiaxes(fig);
sub22(3)=uiaxes(fig);
sub22(4)=uiaxes(fig);
set(sub22(1),'Units','normalized','Position',[0.1300 0.5838 0.3347 0.3412])
set(sub22(2),'Units','normalized','Position',[0.5703 0.5838 0.3347 0.3412])
set(sub22(3),'Units','normalized','Position',[0.1300 0.1100 0.3347 0.3412])
set(sub22(4),'Units','normalized','Position',[0.5703 0.1100 0.3347 0.3412])

viewagl=[-37.5,30;0,90;90,0;0,0];
n=28;
l=[zeros(2,n);ones(1,n)];
th=zeros(1,n);
for i=[02,04,05,06,07,08,09,10,13,14,17,18,19,20,21,22,23,24,25,26,27,28]
	arm(i).a=[1;0;0];
end % 回転軸x

for i=[11,12,15,16]
	arm(i).a=[0;1;0];
end % 回転軸y

for i=[01,03]
	arm(i).a=[0;0;1];
end % 回転軸z

% 長さ
arm(01).l=[0;0;0]; % 原点
arm(02).l=[0;0;10];arm(03).l=[0;0;190];arm(04).l=[0;0;40]; % 胴
arm(05).l=[50;0;0]; % 胴->左脚
arm(06).l=[-50;0;0]; % 胴->右脚
arm(07).l=[100;0;0]; % 胴->左腕
arm(08).l=[-100;0;0]; % 胴->右腕

arm(09).l=[0;0;-100];arm(13).l=[0;0;-100];arm(17).l=[0;-20;0]; % 左脚
arm(10).l=[0;0;-100];arm(14).l=[0;0;-100];arm(18).l=[0;-20;0]; % 右脚
arm(11).l=[0;0;-170];arm(15).l=[0;0;-160];arm(19).l=[0;-20;0]; % 左腕
arm(12).l=[0;0;-170];arm(16).l=[0;0;-160];arm(20).l=[0;-20;0]; % 右腕

arm(21).l=[ 30;  0; 30];arm(22).l=[-30;  0; 30]; % 頭
arm(23).l=[-30;  0;-30];arm(24).l=[ 30;  0;-30];
arm(25).l=[  0; 30; 30];arm(26).l=[  0;-30; 30];
arm(27).l=[  0;-30;-30];arm(28).l=[  0; 30;-30];

% 長さ調整
for i=1:n
	arm(i).l = arm(i).l / 100;
	arm(i).th=0;
    arm(i).lg=arm(i).l/2;
end

% 関節
arm(01).parent= 0; % 原点
arm(02).parent= 1;arm(03).parent= 2;arm(04).parent= 3; % 胴
arm(05).parent= 1; % 胴->左脚
arm(06).parent= 1; % 胴->右脚
arm(07).parent= 3; % 胴->左腕
arm(08).parent= 3; % 胴->右腕

arm(09).parent= 5;arm(13).parent= 9;arm(17).parent=13; % 左脚
arm(10).parent= 6;arm(14).parent=10;arm(18).parent=14; % 右脚
arm(11).parent= 7;arm(15).parent=11;arm(19).parent=15; % 左腕
arm(12).parent= 8;arm(16).parent=12;arm(20).parent=16; % 右腕

arm(21).parent= 4;arm(22).parent=21; % 頭
arm(23).parent=22;arm(24).parent=23;
arm(25).parent=24;arm(26).parent=25;
arm(27).parent=26;arm(28).parent=27;

% 角度
arm(02).th= pi/4; % 胴
arm(04).th=-pi/6; % 首
arm(09).th= pi/6; % 左脚
arm(06).th=-pi/6;arm(10).th= pi/6; % 右脚
arm(07).th=-pi/3; % 左腕
arm(08).th=-pi/4; % 右腕

% 子リンクを接続し双方向リンクとする。
arm=vectest9makechildlink(arm);
ind=vectest9findallchildren(arm);
arm=vectest9kinematics(arm,ind);
plot1=[];
plot1=vectest9plot2021(arm,plot1,sub22);


%-------------------- ui --------------------%
fig2=uifigure;
ui=vectest9makeui2021(arm,'vectest9sub2021;',fig2); % uiの部分

b1=uibutton(fig2,'Position',[300,50,100,50]);
b1.Text='リセット';
%b1.ButtonPushedFcn='[arm,plot1,sub22]=motion1(arm,sub22,ui,plot1)';
b1.ButtonPushedFcn='motion1';

b2=uibutton(fig2,'Position',[300,350,100,50]);
b2.Text='ウキッ';
b2.ButtonPushedFcn='motion2';

b3=uibutton(fig2,'Position',[300,300,100,50]);
b3.Text='ウッキ';
b3.ButtonPushedFcn='motion3';

b4=uibutton(fig2,'Position',[300,250,100,50]);
b4.Text='合格';
b4.ButtonPushedFcn='motion4';

b5=uibutton(fig2,'Position',[300,200,100,50]);
b5.Text='ぐるぐる';
b5.ButtonPushedFcn='motion5';

b6=uibutton(fig2,'Position',[300,150,100,50]);
b6.Text='歩く';
b6.ButtonPushedFcn='motion6';


