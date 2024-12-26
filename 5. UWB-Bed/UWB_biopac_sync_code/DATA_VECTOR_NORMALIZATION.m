% Vector Normalization
function [NormailzedData]  =  DATA_VECTOR_NORMALIZATION(DATA)
%#codegen
[ROW_SIZE, COLUMN_SIZE]  =  size(DATA);                                          % Data size
NormailzedData           =  zeros(ROW_SIZE, COLUMN_SIZE);                        % Data size��ŭ �迭 �ʱ�ȭ
Dir                      =  0;                                                   % Direction

if COLUMN_SIZE > ROW_SIZE                                                        % Column�� size�� ũ�� 
    Channel_Size   =  ROW_SIZE;                                                  % Channel size�� Row���� �޴´�
    Dir            =  1;                                                         % Direction: 1
else                                                                             % Row���� size�� ũ��
    Channel_Size   =  COLUMN_SIZE;                                               %  Channel size�� Column���� �޴´�
    Dir            =  -1;                                                        % Direction: -1
end

for k=1:1:Channel_Size                                                           % Channle size�� ���� ������ Normalization 1
    if Dir == 1                                                                  % Channle size�� ���� ������ Normalization 2
        NormailzedData(k,:)  = (DATA(k,:) - mean(DATA(k,:)))/ std(DATA(k,:));    % Channle size�� ���� ������ Normalization 3
    elseif Dir == -1                                                             % Channle size�� ���� ������ Normalization 4
        NormailzedData(:,k)  = (DATA(:,k) - mean(DATA(:,k)))/ std(DATA(:,k));    % Channle size�� ���� ������ Normalization 5
    end                                                                          % Channle size�� ���� ������ Normalization 6
end                                                                              % Channle size�� ���� ������ Normalization 7
     
    