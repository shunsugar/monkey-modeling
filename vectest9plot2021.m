function plot1=vectest9plot2021(arm,plot1,sub22)
ind=vectest9findallchildren(arm);
[row,col]=size(ind);
viewagl=[-37.5 30;0 90;90 0;0 0];
if(isempty(plot1))
	for row1=1:row
		p0=[0;0;0];pg=[];
		for col1=1:col;
			if(ind(row1,col1)==0) continue;end
			p0=[p0,arm(ind(row1,col1)).p(:)];
			pg=[pg,arm(ind(row1,col1)).pg];
		end
		for j=1:4;
			hold(sub22(j),'on');
			plot1(1,row1,j)=plot3(sub22(j),p0(1,:),p0(2,:),p0(3,:),'o-','linewidth',3);
			%plot1(2,row1,j)=plot3(sub22(j),pg(1,:),pg(2,:),pg(3,:),'ro','markersize',5);
			hold off;
			axis(sub22(j),'equal');grid(sub22(j),'on');xlabel(sub22(j),'x');ylabel(sub22(j),'y');zlabel(sub22(j),'z');
			axis(sub22(j),[-3,3,-4,2,-2,4]);
            %axis(sub22(j),[-5,5,-5,5,0,10]);
			view(sub22(j),viewagl(j,:));
		end
	end
else
	for row1=1:row
		p0=[0;0;0];pg=[];
		for col1=1:col
			if(ind(row1,col1)==0) continue;end
			p0=[p0,arm(ind(row1,col1)).p(:)];
			pg=[pg,arm(ind(row1,col1)).pg];
		end
		for j=1:4
			set(plot1(1,row1,j),'xdata',p0(1,:),'ydata',p0(2,:),'zdata',p0(3,:));
			%set(plot1(2,row1,j),'xdata',pg(1,:),'ydata',pg(2,:),'zdata',pg(3,:));
		end
	end
end
