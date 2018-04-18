function label = hitungLabel(hasil)
    % Mengambil label pada masing-masing record berdasarkan nilai k
    sum = 0;
    k = 59; % 3000 pertama (70.5 --> 49); 3000 kedua (71.2 --> 59)
    for i = 1:k
        sum = sum + hasil(i,2);
    end
    if sum > (k/2)  
        label = 1;
    else
        label = 0;
    end
end