   % Metin Öztürk
   % The following code is to generate a sinusoidal wave with a phase angle for a question in a final exam
   % of the Principles of Electrical and Electronics Engineering module.
   % The question asks for the time t_1 when the generated sinusoidal cross
   % the time axix for the first time after t=0.
   % The qeustion is inspired by the problems of Chapter 10 of the book
   % "Introductory Circuit Analysis" 11th ed. by Robert L. Boylestad,
   % Pearson, Prentice Hall
    %% start of the code  
   close all
   %% frequency & time 
   f_s = 1e5;   % sampling frequency
   T = 1/f_s;   % sampling period
   exec = 3e-3;   % execution time (in seconds)
   t = (0 : T : exec-T)'; % run time (in seconds)
   f_c = 5e2; % cyclic frequency (in hertz)
   
   %% sine function
   ac = 150*sin(2*pi*f_c*t+pi/4);  % create the sinusoidal ac signal
   
   %% plotting
   figure;
   plot(t, ac, 'linewidth', 2);
   
   % plot settings
   xticks([0 0.75e-3 1e-3 2e-3 3e-3]); % specify the xticks
   xticklabels({'0','$t_1$','$\pi$','$\pi$','$3\pi$'}); % specify the xtick labels
   set(gca,'TickLabelInterpreter','latex'); % use latex interpreter
   h = gca;
   h.FontSize = 20; % font size for the tick labels
   h.GridAlpha = 1; % specify the opacity of the grid lines
   xlabel('$t$', 'interpreter', 'latex', 'fontsize', 24);
   ylabel('$v$', 'interpreter', 'latex', 'fontsize', 24);
   hold on;
   
   % plot the t-axis
   z = zeros(length(t),1);
   plot(t, z, 'linewidth', 2);
   grid on;
   
   % put an extra dot to t_1
   plot(0.75e-3,0, 'ko','linewidth', 6)
  
   %% annotations
   
   % for v(t)
   anno_x = [0.53 0.63];
   anno_y = [0.8 0.7];
   annotation('textarrow',anno_x,anno_y,'String','$v(t)$', 'interpreter', 'latex', 'fontsize', 20, 'fontsize', 20)
   
   % for v=0
   anno_x = [0.74 0.74];
   anno_y = [0.44 0.55];
   annotation('textarrow',anno_x,anno_y,'String','$v=0$', 'interpreter', 'latex', 'fontsize', 20, 'fontsize', 20)
   
   