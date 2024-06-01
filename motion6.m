%function [arm,plot1,sub22]=motion6(arm,sub22,ui,plot1)
    for i=1:length(ui)
        set(ui(i),'Value',0);
    end
    set(ui(02),'Value', pi/4); % 胴
    set(ui(04),'Value',-pi/6); % 首
    set(ui(09),'Value', pi/6); % 左脚
    set(ui(06),'Value',-pi/6);set(ui(10),'Value', pi/6); % 右脚
    set(ui(07),'Value',-pi/3); % 左腕
    set(ui(08),'Value',-pi/4); % 右腕
    
    for k=1:3
        for jj=0:pi/30:pi/6
            if jj < pi/12
                set(ui(02),'value', pi/4-jj*3/4);
            else
                set(ui(02),'value',pi/12+jj*3/4);
            end
            set(ui(05),'value',    0-jj);
            set(ui(06),'value',-pi/6+jj);
            set(ui(07),'Value',-pi/3+jj/2);
            set(ui(08),'Value',-pi/4-jj/2);
            vectest9sub2021;
            drawnow;
        end

        for jj=0:pi/30:pi/6
            if jj < pi/12
                set(ui(02),'value', pi/4-jj*3/4);
            else
                set(ui(02),'value',pi/12+jj*3/4);
            end
            set(ui(05),'value',-pi/6+jj);
            set(ui(06),'value',    0-jj);
            set(ui(07),'Value',-pi/4-jj/2);
            set(ui(08),'Value',-pi/3+jj/2);
            vectest9sub2021;
            drawnow;
        end
    end
%end
