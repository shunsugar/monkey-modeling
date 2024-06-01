function ui=vectest9makeui2021(arm,callbackscript,fig)
uiind=[];
for i=1:length(arm)
	if(sum(arm(i).children==0)) continue;end
	uiind=[uiind,i];
end
for i=1:6
    ui(i)=uislider(fig,'limits',[-pi/2,pi/2]);
    ui(i).MajorTickLabels={'0' };
    ui(i).MajorTicksMode='manual';
	val=arm(uiind(i)).th;
	set(ui(i),'value',val,'tag',num2str(uiind(i)));
    ii = mod(i - 1,10);
    jj = floor((i - 1) / 10);
	set(ui(i),'position',[10+70*jj,30+40*ii,60,3],'ValueChangedFcn',callbackscript)
	uilabel(fig,'position',[70+70*jj,30+40*ii,20,20],'text',num2str(uiind(i)));
end
for i=7:8
    ui(i)=uislider(fig,'limits',[-pi,pi]);
    ui(i).MajorTickLabels={'0' };
    ui(i).MajorTicksMode='manual';
	val=arm(uiind(i)).th;
	set(ui(i),'value',val,'tag',num2str(uiind(i)));
    ii = mod(i - 1,10);
    jj = floor((i - 1) / 10);
	set(ui(i),'position',[10+70*jj,30+40*ii,60,3],'ValueChangedFcn',callbackscript)
	uilabel(fig,'position',[70+70*jj,30+40*ii,20,20],'text',num2str(uiind(i)));
end
for i=9:10
    ui(i)=uislider(fig,'limits',[-pi/2,pi/2]);
    ui(i).MajorTickLabels={'0' };
    ui(i).MajorTicksMode='manual';
	val=arm(uiind(i)).th;
	set(ui(i),'value',val,'tag',num2str(uiind(i)));
    ii = mod(i - 1,10);
    jj = floor((i - 1) / 10);
	set(ui(i),'position',[10+70*jj,30+40*ii,60,3],'ValueChangedFcn',callbackscript)
	uilabel(fig,'position',[70+70*jj,30+40*ii,20,20],'text',num2str(uiind(i)));
end
for i=11
    ui(i)=uislider(fig,'limits',[0,pi]);
    ui(i).MajorTickLabels={'0' };
    ui(i).MajorTicksMode='manual';
	val=arm(uiind(i)).th;
	set(ui(i),'value',val,'tag',num2str(uiind(i)));
    ii = mod(i - 1,10);
    jj = floor((i - 1) / 10);
	set(ui(i),'position',[10+70*jj,30+40*ii,60,3],'ValueChangedFcn',callbackscript)
	uilabel(fig,'position',[70+70*jj,30+40*ii,20,20],'text',num2str(uiind(i)));
end
for i=12
    ui(i)=uislider(fig,'limits',[-pi,0]);
    ui(i).MajorTickLabels={'0' };
    ui(i).MajorTicksMode='manual';
	val=arm(uiind(i)).th;
	set(ui(i),'value',val,'tag',num2str(uiind(i)));
    ii = mod(i - 1,10);
    jj = floor((i - 1) / 10);
	set(ui(i),'position',[10+70*jj,30+40*ii,60,3],'ValueChangedFcn',callbackscript)
	uilabel(fig,'position',[70+70*jj,30+40*ii,20,20],'text',num2str(uiind(i)));
end
for i=13:23
    ui(i)=uislider(fig,'limits',[-pi/2,pi/2]);
    ui(i).MajorTickLabels={'0' };
    ui(i).MajorTicksMode='manual';
	val=arm(uiind(i)).th;
	set(ui(i),'value',val,'tag',num2str(uiind(i)));
    ii = mod(i - 1,10);
    jj = floor((i - 1) / 10);
	set(ui(i),'position',[10+70*jj,30+40*ii,60,3],'ValueChangedFcn',callbackscript)
	uilabel(fig,'position',[70+70*jj,30+40*ii,20,20],'text',num2str(uiind(i)));
end

%{
for i=1:length(uiind)
    ui(i)=uislider(fig,'limits',[-pi/2,pi/2]);
    ui(i).MajorTickLabels={'0' };
    ui(i).MajorTicksMode='manual';
	val=arm(uiind(i)).th;
	set(ui(i),'value',val,'tag',num2str(uiind(i)));
    ii = mod(i - 1,10);
    jj = floor((i - 1) / 10);
	set(ui(i),'position',[10+70*jj,30+40*ii,60,3],'ValueChangedFcn',callbackscript)
	uilabel(fig,'position',[70+70*jj,30+40*ii,20,20],'text',num2str(uiind(i)));
end
%}
