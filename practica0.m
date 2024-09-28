%planeo de sistema:
disp('planteo del sistema')
a=[2 4 5;6 9 8;4.1 5 3]
b=[220; 490;274]
x=b\a
%determinante
disp('determinante muy sercano a 0')
det(a)
%matriz identidad
disp('matriz identidad')
i=a*inv(a)
%condiconal
disp('condicional muy grande')
cond(a)
%pequeños cambios
disp('planteo con modificaciones del sistema')
a1=[2 4 5;6 9 8;4.2 5 3]
b1=[220; 490;274]
x1=b1\a1


