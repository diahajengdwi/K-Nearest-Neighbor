clear all;
clc;

% Import dataset
filename = 'Dataset Tugas 3 AI 1718.xlsx';
A1 = xlsread(filename,1,'B1002:F4001');
A2 = xlsread(filename,1,'B2:F1001');
B = xlsread(filename,2,'B2:E1001');
label=[];hasil=[];

% Proses mencari akurasi
for i = 1:size(A2,1)
    for j = 1:size(A1,1)
        hasil(1,j) = hitungJarak(A2(i,1),A1(j,1),A2(i,2),A1(j,2),A2(i,3),A1(j,3),A2(i,4),A1(j,4));
        hasil(2,j) = A1(j,5);
    end
    hasil = sortrows(hasil');
    label(1,i) = hitungLabel(hasil);
end
akurasi = (sum(label'==A2(:,5))/size(A2,1)) * 100;

% Proses mencari label pada masing-masing record
for i = 1:size(B,1)
    for j = 1:size(A1,1)
        hasil(1,j) = hitungJarak(B(i,1),A1(j,1),B(i,2),A1(j,2),B(i,3),A1(j,3),B(i,4),A1(j,4));
        hasil(2,j) = A1(j,5);
    end
    label(1,i) = B(i,1);
    label(2,i) = B(i,2);
    label(3,i) = B(i,3);
    label(4,i) = B(i,4);
    hasil = sortrows(hasil');
    label(5,i) = hitungLabel(hasil);
end
x = ['Akurasi = ',num2str(akurasi),'%'];
disp(x);
label = label'
xlswrite(filename,label(:,5),2,'F2')