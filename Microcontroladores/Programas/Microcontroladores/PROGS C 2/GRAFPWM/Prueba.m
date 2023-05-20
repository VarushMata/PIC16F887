% Abre  cierra canales de COM
%s1 = serial('COM5')
%set(s1,'BaudRate',9600)
%fopen(s1)
new = instrfind('Port','COM5')
fclose(new)

%fclose(s1)

%Confirma el cierre del COM 
%s1 = serial('COM5')
%set(s1,'BaudRate',9600)
%fopen(s1)
%fclose(s1)
