%function [arm,plot1,sub22]=motion4(arm,sub22,ui,plot1)
    for i=1:length(ui)
        set(ui(i),'Value',0);
    end
    set(ui(02),'Value', pi/5); % 胴
    set(ui(04),'Value',-pi/6); % 首
    set(ui(09),'Value', pi/6); % 左脚
    set(ui(06),'Value',-pi/6);set(ui(10),'Value', pi/6); % 右脚
    set(ui(07),'Value',-pi  );set(ui(11),'Value', pi/4); % 左腕
    set(ui(08),'Value',-pi  );set(ui(12),'Value',-pi/4); % 右腕
    vectest9sub2021;
    drawnow;
%end
