%I>1��Ϊż�� 
function [ICT]=FunSelct2(N_seq)
I=N_seq;
% I=9;
% if mod(I,2)==0
%     ICT=zeros(nchoosek(I,I/2),I,I/2);
%     AAA=zeros(nchoosek(I,I/2),I,I/2);
%     AAA(1,:,1)=1:I;
%     for i=1:I/2
%         c=nchoosek(I,i);
%         ICT(1:c,1:i,i)=nchoosek(1:I,i);
%         for j=1:c
%             ICT(j,i+1:I,i)=setdiff(AAA(1,:,1),ICT(j,1:i,i));%setdiffֻ�ܶ���������
%         end
%     end
% else
ICT=zeros(nchoosek(I,ceil(I/2)),I,ceil(I/2));
AAA=zeros(nchoosek(I,ceil(I/2)),I,ceil(I/2));
AAA(1,:,1)=1:I;
for i=1:ceil(I/2)
    c=nchoosek(I,i);
    ICT(1:c,1:i,i)=nchoosek(1:I,i);
    for j=1:c
        ICT(j,i+1:I,i)=setdiff(AAA(1,:,1),ICT(j,1:i,i));%setdiffֻ�ܶ���������
    end
end
end
% end