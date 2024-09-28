% Planteo del sistema
disp('Planteo del sistema')
A = [2 4 5; 6 9 8; 4.1 5 3];
b = [220; 490; 274];

% Resolviendo el sistema de ecuaciones
x = A \ b;
disp('Solución del sistema:')
disp(x)

% Definir los planos
[x_vals, y_vals] = meshgrid(linspace(-10, 10, 200), linspace(-10, 10, 200));

% Ecuaciones de los planos (z = (b - ax - by) / c)
Z1 = (220 - 2 * x_vals - 4 * y_vals) / 5;
Z2 = (490 - 6 * x_vals - 9 * y_vals) / 8;
Z3 = (274 - 4.1 * x_vals - 5 * y_vals) / 3;

% Graficar los planos
figure;
hold on;
surf(x_vals, y_vals, Z1, 'FaceAlpha', 0.5, 'EdgeColor', 'none', 'FaceColor', 'r');
surf(x_vals, y_vals, Z2, 'FaceAlpha', 0.5, 'EdgeColor', 'none', 'FaceColor', 'g');
surf(x_vals, y_vals, Z3, 'FaceAlpha', 0.5, 'EdgeColor', 'none', 'FaceColor', 'b');

% Configuración de la gráfica
xlabel('Eje X');
ylabel('Eje Y');
zlabel('Eje Z');
title('Gráfica de los tres planos');

hold off;

