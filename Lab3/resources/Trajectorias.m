t = 0:0.005:10;     % vector linha com os instantes de tempo
C = [1 0];          % vector (linha) de saída
for m=1:2
    if m==1 
        s0 = [1 ; 1];       % condição inicial
        cor = 'b';
    elseif m==2 
        s0 = [-1 ; -1];
        cor = 'r';
    end
    % matriz da dinâmica para K=2
    K=2; A=[0 1 ; (3-K) -2];
    [y1,s1] = SEHom(A,C,s0,t); s11 = s1(1,:); s12 = s1(2,:);
    % matriz da dinâmica para K=3
    K=3; A=[0 1 ; (3-K) -2];
    [y2,s2] = SEHom(A,C,s0,t); s21 = s2(1,:); s22 = s2(2,:);
    % matriz da dinâmica para K=4
    K=4; A=[0 1 ; (3-K) -2];
    [y3,s3] = SEHom(A,C,s0,t); s31 = s3(1,:); s32 = s3(2,:);
    % matriz da dinâmica para K=8
    K=8; A=[0 1 ; (3-K) -2];
    [y4,s4] = SEHom(A,C,s0,t); s41 = s4(1,:); s42 = s4(2,:);
    % Sinais de saída
    figure(1)
    subplot(2,2,1); plot(t,y1,cor); xlabel('t'); ylabel('y(t)'); title('K=2'); hold on;
    %legend('s0=[1;1]','s0=[-1;-1]','Location','Best')
    subplot(2,2,2); plot(t,y2,cor); xlabel('t'); ylabel('y(t)'); title('K=3'); hold on;
    %legend('s0=[1;1]','s0=[-1;-1]','Location','Best')
    subplot(2,2,3); plot(t,y3,cor); xlabel('t'); ylabel('y(t)'); title('K=4'); hold on;
    %legend('s0=[1;1]','s0=[-1;-1]','Location','Best')
    subplot(2,2,4); plot(t,y4,cor); xlabel('t'); ylabel('y(t)'); title('K=8'); hold on;
    %legend('s0=[1;1]','s0=[-1;-1]','Location','Best')
    % Trajectórias no plano de estados
    figure(2)
    subplot(2,2,1); plot(s11,s12,cor); xlabel('s_1'); ylabel('s_2'); title('K=2'); hold on;
    %legend('s0=[1;1]','s0=[-1;-1]','Location','Best')
    subplot(2,2,2); plot(s21,s22,cor); xlabel('s_1'); ylabel('s_2'); title('K=3'); hold on;
    %legend('s0=[1;1]','s0=[-1;-1]','Location','Best')
    subplot(2,2,3); plot(s31,s32,cor); xlabel('s_1'); ylabel('s_2'); title('K=4'); hold on;
    %legend('s0=[1;1]','s0=[-1;-1]','Location','Best')
    subplot(2,2,4); plot(s41,s42,cor); xlabel('s_1'); ylabel('s_2'); title('K=8'); hold on;
    %legend('s0=[1;1]','s0=[-1;-1]','Location','Best')
    
end