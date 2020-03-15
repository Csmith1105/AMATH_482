% Audio classifier

%% Load in spectrogram files

clear; close all; clc

load test_01/test_01a_sp.mat
load test_01/test_01b_sp.mat
load test_01/test_01c_sp.mat

%% Train classifier
close all;clc;

feature = 50;
size_train = 25;
size_test = 15;

% the training data is the first 10 spectrograms from each data set

train_1a = sp_1a(:,1:size_train);
train_1b = sp_1b(:,1:size_train);
train_1c = sp_1c(:,1:size_train);


[U,S,V,thresholds,d_arr,w_arr,rank,proj_w1, proj_w2] = trainer(train_1a,train_1b,train_1c,feature);

% compute the mean position in the w1/w2 plane
class_1 = [mean(proj_w1(1,:)),mean(proj_w2(1,:))];
class_2 = [mean(proj_w1(2,:)),mean(proj_w2(2,:))];
class_3 = [mean(proj_w1(3,:)),mean(proj_w2(3,:))];

means = [class_1; class_2; class_3];

%% Test 3

dim = size(sp_1a);
n = dim(2);

% % % test the different classes 
test_1a = sp_1a(:,size_train+1:n);
test_1b = sp_1b(:,size_train+1:n);
test_1c = sp_1c(:,size_train+1:n);

% project the test data on the principal components & w vectors
pval_a = w_arr*U'*test_1a;
pval_b = w_arr*U'*test_1b;
pval_c = w_arr*U'*test_1c;


class_a1 = classify_1D(pval_a(1,:),thresholds(1,:), rank);
class_b1 = classify_1D(pval_b(1,:),thresholds(1,:), rank);
class_c1 = classify_1D(pval_c(1,:),thresholds(1,:), rank);

tc_a = sum(class_a1 == 1);
tt_a = length(class_a1);
pc_a = tc_a/tt_a;

tc_b = sum(class_b1 == 2);
tt_b = length(class_b1);
pc_b = tc_b/tt_b;

tc_c = sum(class_c1 == 3);
tt_c = length(class_c1);
pc_c = tc_c/tt_c;

% class_a2 = classify_2D(pval_a,means);
% class_b2 = classify_2D(pval_b,means);
% class_c2 = classify_2D(pval_c,means);
% 
% tc_a = sum(class_a2 == 1);
% tt_a = length(class_a2);
% pc_a = tc_a/tt_a;
% 
% tc_b = sum(class_b2 == 2);
% tt_b = length(class_b2);
% pc_b = tc_b/tt_b;
% 
% tc_c = sum(class_c2 == 3);
% tt_c = length(class_c2);
% pc_c = tc_c/tt_c;

%% Plot the test and training data in 1D

figure(1)
subplot(2,2,1)
plot(proj_w1(1,:),ones(size_train),'ob','Linewidth',2)
hold on
plot(proj_w1(2,:),ones(size_train)*2,'or','Linewidth',2)
hold on
plot(proj_w1(3,:),ones(size_train)*3,'og','Linewidth',2)
ylim([0.5 3.5])
plot([thresholds(1,1);thresholds(1,1)],get(gca, 'ylim'),'r')
hold on
plot([thresholds(1,2);thresholds(1,2)],get(gca, 'ylim'),'r')
title('Test 1: training data', 'Fontsize', 16)
LH(1) = plot(nan, nan, 'ob');
L{1} = 'CLASS A';
LH(2) = plot(nan, nan, 'or');
L{2} = 'CLASS B';
LH(3) = plot(nan, nan, 'og');
L{3} = 'CLASS C';
legend(LH, L, 'FontSize',9, 'Location', 'southwest');
xlabel('w1 values','FontSize',12, 'Fontweight', 'bold');
yticks([1 2 3])
yticklabels({'Class A','Class B','Class C'})
hold off

% Plot the test data 1D
subplot(2,2,2)
plot(pval_a(1,:),ones(length(pval_a(1,:))),'ob','Linewidth',2)
hold on
plot(pval_b(1,:),ones(length(pval_b(1,:)))*2,'or','Linewidth',2)
hold on
plot(pval_c(1,:),ones(length(pval_c(1,:)))*3,'og','Linewidth',2)
hold on
ylim([0.5 3.5])
plot([thresholds(1,1);thresholds(1,1)],get(gca, 'ylim'),'r')
hold on
plot([thresholds(1,2);thresholds(1,2)],get(gca, 'ylim'),'r')
title('Test 1: test data', 'Fontsize', 16)
LH(1) = plot(nan, nan, 'ob');
L{1} = 'CLASS A';
LH(2) = plot(nan, nan, 'or');
L{2} = 'CLASS B';
LH(3) = plot(nan, nan, 'og');
L{3} = 'CLASS C';
legend(LH, L, 'FontSize',9, 'Location', 'southwest');
xlabel('w1 values','FontSize',12, 'Fontweight', 'bold');
yticks([1 2 3])
yticklabels({'Class A','Class B','Class C'})
hold off

% Plot the test and training data in 2D



subplot(2,2,3)
plot(proj_w1(1,:),proj_w2(1,:), 'bo')
hold on;
plot(class_1(1),class_1(2), 'o','MarkerFaceColor', 'b')
hold on;
plot(proj_w1(2,:),proj_w2(2,:), 'ro')
hold on;
plot(class_2(1),class_2(2), 'o','MarkerFaceColor', 'r')
hold on;
plot(proj_w1(3,:),proj_w2(3,:), 'go')
hold on;
plot(class_3(1),class_3(2), 'o','MarkerFaceColor', 'g')
hold on;
title('Test 1: training data', 'Fontsize', 16)
xlabel('w1 values','FontSize',12, 'Fontweight', 'bold');
ylabel('w2 values','FontSize',12, 'Fontweight', 'bold');
LH(1) = plot(nan, nan, 'ob');
L{1} = 'CLASS A';
LH(2) = plot(nan, nan, 'or');
L{2} = 'CLASS B';
LH(3) = plot(nan, nan, 'og');
L{3} = 'CLASS C';
legend(LH, L, 'FontSize',9, 'Location', 'southwest');
hold off

% Plot test data 2D

subplot(2,2,4)
plot(means(1,1),means(1,2), 'o','MarkerFaceColor', 'b')
hold on;
plot(means(2,1),means(2,2), 'o','MarkerFaceColor', 'r')
hold on;
plot(means(3,1),means(3,2), 'o','MarkerFaceColor', 'g')
hold on;
plot(pval_a(1,:),pval_a(2,:), 'bo')
hold on;
plot(pval_b(1,:),pval_b(2,:), 'ro')
hold on;
plot(pval_c(1,:),pval_c(2,:), 'go')
title('Test 1: test data', 'Fontsize', 16)
xlabel('w1 values','FontSize',12, 'Fontweight', 'bold');
ylabel('w2 values','FontSize',12, 'Fontweight', 'bold');
LH(1) = plot(nan, nan, 'ob');
L{1} = 'CLASS A';
LH(2) = plot(nan, nan, 'or');
L{2} = 'CLASS B';
LH(3) = plot(nan, nan, 'og');
L{3} = 'CLASS C';
legend(LH, L, 'FontSize',9, 'Location','southwest');
hold off


%% Plot histograms of test data 1D

% bins = 1;
% 
% %  Plot histogram of test data with thresholds
% figure(3)
% subplot(1,3,1)
% histogram(pval_a(1,:),bins); 
% xlim([-500 1500])
% hold on, 
% plot([thresholds(1,1);thresholds(1,1)],get(gca, 'ylim'),'r')
% hold on
% plot([thresholds(1,2);thresholds(1,2)],get(gca, 'ylim'),'r')
% xlabel('class 2 range            class 1 range              class 3 range',...
%     'Fontsize', 10, 'Fontweight', 'bold')
% title('Test 1: class 1 data', 'Fontsize', 14)
% hold off
% 
% subplot(1,3,2)
% histogram(pval_b(1,:),bins); 
% xlim([-500 1500])
% hold on, 
% plot([thresholds(1,1);thresholds(1,1)],get(gca, 'ylim'),'r')
% hold on
% plot([thresholds(1,2);thresholds(1,2)],get(gca, 'ylim'),'r')
% xlabel('class 2 range            class 1 range              class 3 range',...
%     'Fontsize', 10, 'Fontweight', 'bold')
% title('Test 1: class 2 data', 'Fontsize', 14)
% hold off 
% 
% subplot(1,3,3)
% histogram(pval_c(1,:),bins);
% xlim([-500 1500])
% hold on, 
% plot([thresholds(1,1);thresholds(1,1)],get(gca, 'ylim'),'r')
% hold on
% plot([thresholds(1,2);thresholds(1,2)],get(gca, 'ylim'),'r')
% xlabel('class 2 range            class 1 range              class 3 range',...
%     'Fontsize', 10, 'Fontweight', 'bold')
% title('Test 1: class 3 data', 'Fontsize', 14)
% hold off

%% Classify using 1D

% Classify using first projection vector

function classes = classify_1D(pval,threshold,rank)

    dim = size(pval);
    n = dim(2);
    classes = zeros(1,n);
  
    for j=1:n
         if pval(j)<threshold(2) && pval(j)>threshold(1)
            classes(j) = rank(2);
        elseif pval(j)>threshold(2)
            classes(j) = rank(3);
        else
            classes(j) = rank(1);
        end   
    end 
end


%% Classify 2D

% Classify using both projection vectors

function classes = classify_2D(pvals,means)
    
    dim = size(pvals);
    n = dim(2);
    classes = zeros(1,n);

    % for every spectrogram in the data 
    for j=1:n
        A = [pvals(:,j)'; means(1,:)];
        B = [pvals(:,j)'; means(2,:)];
        C = [pvals(:,j)'; means(3,:)];

        % compute the minimumm distance to a class mean
        distances = [pdist(A,'euclidean') ...
        pdist(B,'euclidean')... 
        pdist(C,'euclidean')];

        [~, min_idx] = min(distances);
        classes(j) = min_idx;
    end
       
end


function [U,S,V,thresholds,d_arr,w_arr,rank,proj_w1,proj_w2] = trainer(s1,s2,s3,feature)

    % a 800k by 30 matrix of the spectrograms from all 3 groups
    X = [s1 s2 s3];

    ns1 = size(s1,2); 
    ns2 = size(s2,2);
    ns3 = size(s3,2);

    [U,S,V] = svd(X,'econ');

    songs = S*V'; % projection onto principal components

    % choose how many singular values we want
    U = U(:,1:feature);

    % separate the songs now that they are
    % in the principal component basis
    song_1 = songs(1:feature,1:ns1);
    song_2 = songs(1:feature,ns1+1:ns1+ns2);
    song_3 = songs(1:feature,ns1+ns2+1:ns1+ns2+ns3);

    ms_all = mean(songs(1:feature,:),2);
    ms1 = mean(song_1,2);
    ms2 = mean(song_2,2);
    ms3 = mean(song_3,2);


    Sw = 0; % within class variances
    for k=1:ns1
        Sw = Sw + (song_1(:,k)-ms1)*(song_1(:,k)-ms1)';
    end
    for k=1:ns2
        Sw = Sw + (song_2(:,k)-ms2)*(song_2(:,k)-ms2)';
    end
    for k=1:ns3
        Sw = Sw + (song_3(:,k)-ms3)*(song_3(:,k)-ms3)';
    end

    Sb = (ms1-ms_all)*(ms1-ms_all)'; % between class 
    Sb = Sb + (ms2-ms_all)*(ms2-ms_all)'; 
    Sb = Sb + (ms3-ms_all)*(ms3-ms_all)'; 


    % get the eigenvalue
    [V2,D] = eig(Sb,Sw); % linear discriminant analysis
    max(max(D));

    [d1,ind] = max(abs(diag(D)));

    % eigenvector with max eigenvalue
    w1 = V2(:,ind); 
    w1 = w1/norm(w1,2);

    D(:,ind) = [];
    [d2,ind] = max(abs(diag(D)));
    
    d_arr = [d1,d2];

    % eigenvector with 2nd max eigenvalue
    w2 = V2(:,ind); 
    w2 = w2/norm(w2,2);
    
    w_arr = [w1 w2]';

    % project the song data onto w1
    sort_s1a = w1'*song_1; 
    sort_s2a = w1'*song_2;
    sort_s3a = w1'*song_3; 
    
    proj_w1 = [sort_s1a; sort_s2a; sort_s3a];
   
    % project the song data onto w2
    sort_s1b = w2'*song_1; 
    sort_s2b = w2'*song_2;
    sort_s3b = w2'*song_3; 
    
    proj_w2 = [sort_s1b; sort_s2b; sort_s3b];


    % figure out which means are 'neighbors'

    mv_a = [mean(sort_s1a) mean(sort_s2a) mean(sort_s3a)];

    for j=1:3
        if mv_a(j) == max(mv_a)
            % max_val = mv_a(j);
            max_class_a = j;
        elseif mv_a(j) == min(mv_a)
            % min_val = mv_a(j);
            min_class_a = j;
        else
            % med_val = mv_a(j);
            med_class_a = j;
        end
    end
    
    rank = [min_class_a med_class_a max_class_a];

    vsm = [sort_s1a; sort_s2a; sort_s3a];

    % sort all values from lowest to highest
    sort_max_a = sort(vsm(max_class_a,:));
    sort_med_a = sort(vsm(med_class_a,:));
    sort_min_a = sort(vsm(min_class_a,:));

%     thresholds(1,1) = (mean(sort_med_a ) - mean(sort_min_a))/2;
%     thresholds(1,2) = (mean(sort_max_a ) - mean(sort_med_a))/2;
    t1a = length(sort_max_a);
    t2a = 1;
    while (t1a > 0 && sort_max_a(t1a)>sort_med_a(t2a))
    t1a = t1a-1;
    t2a = t2a+1;
    end
    if t1a == 0
    thresholds(1,2) = (sort_max_a(1)+sort_med_a(length(sort_max_a)))/2;
    else
    thresholds(1,2) = (sort_max_a(t1a)+sort_med_a(t2a))/2;
    end


    t1b = length(sort_med_a);
    t2b = 1;
    while (t1b > 0 && sort_med_a(t1b)>sort_min_a(t2b))
    t1b = t1b-1;
    t2b = t2b+1;
    end

    if t1b == 0
    thresholds(1,1) = (sort_med_a(1)+sort_min_a(length(sort_med_a)))/2;
    else
    thresholds(1,1) = (sort_med_a(t1b)+sort_min_a(t2b))/2;
    end
    
    % figure out which means are 'neighbors'

    mv_b = [mean(sort_s1b) mean(sort_s2b) mean(sort_s3b)];

    for j=1:3
        if mv_b(j) == max(mv_b)
            % max_val = mv_a(j);
            max_class_b = j;
        elseif mv_b(j) == min(mv_b)
            % min_val = mv_a(j);
            min_class_b = j;
        else
            % med_val = mv_a(j);
            med_class_b = j;
        end
    end
    
    vsm = [sort_s1b; sort_s2b; sort_s3b];

    % sort all values from lowest to highest
    sort_max_b = sort(vsm(max_class_b,:));
    sort_med_b = sort(vsm(med_class_b,:));
    sort_min_b = sort(vsm(min_class_b,:));
    
    

%     thresholds(2,1) = (mean(sort_med_b ) - mean(sort_min_b))/2;
%     thresholds(2,2) = (mean(sort_max_b ) - mean(sort_med_b))/2;


    t1a = length(sort_max_b);
    t2a = 1;
    while (t1a > 0 && sort_max_b(t1a)>sort_med_b(t2a))
    t1a = t1a-1;
    t2a = t2a+1;
    end
    if t1a == 0
    thresholds(2,2) = (sort_max_b(1)+sort_med_b(length(sort_max_b)))/2;
    else
    thresholds(2,2) = (sort_max_b(t1a)+sort_med_b(t2a))/2;
    end


    t1b = length(sort_med_b);
    t2b = 1;
    while (t1b > 0 && sort_med_b(t1b)>sort_min_b(t2b))
    t1b = t1b-1;
    t2b = t2b+1;
    end

    if t1b == 0
    thresholds(2,1) = (sort_med_b(1)+sort_min_b(length(sort_med_b)))/2;
    else
    thresholds(2,1) = (sort_med_b(t1b)+sort_min_b(t2b))/2;
    end
    
end