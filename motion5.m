%function [arm,plot1,sub22]=motion5(arm,sub22,ui,plot1)
    for i=1:length(ui)
        set(ui(i),'Value',0);
    end
    set(ui(02),'Value', pi/5); % 胴
    set(ui(04),'Value',-pi/6); % 首
    set(ui(09),'Value', pi/6); % 左脚
    set(ui(06),'Value',-pi/6);set(ui(10),'Value', pi/6); % 右脚
    set(ui(07),'Value',-pi/3);set(ui(11),'Value',2*pi/3); % 左腕
    set(ui(08),'Value',-pi/3);set(ui(12),'Value', -pi/3); % 右腕

    for k=1:3
        for jj=0:pi/15:pi/3
            if jj < pi/6
                set(ui(07),'value',-pi/3+jj);
                set(ui(08),'value',-pi/3-jj);
            else
                set(ui(07),'value',      0-jj);
                set(ui(08),'value',-2*pi/3+jj);
            end
            set(ui(11),'value',2*pi/3-jj);
            set(ui(12),'value', -pi/3-jj);
            vectest9sub2021;
            drawnow;
        end

        for jj=0:pi/15:pi/3
            if jj < pi/6
                set(ui(07),'value',-pi/3-jj);
                set(ui(08),'value',-pi/3+jj);
            else
                set(ui(07),'value',-2*pi/3+jj);
                set(ui(08),'value',      0-jj);
            end
            set(ui(11),'value',   pi/3+jj);
            set(ui(12),'value',-2*pi/3+jj);
            vectest9sub2021;
            drawnow;
        end
    end
%end
