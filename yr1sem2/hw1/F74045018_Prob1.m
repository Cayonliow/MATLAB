%the binary presentation are stored in array
bin= [0 1 0 0 0 0 0 1 0 0 0 1 1 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0];
bin2=[1 1 0 0 0 0 0 1 0 0 0 1 1 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0];
bin3=[0 1 0 0 0 0 0 0 0 0 0 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1];
%signed binary presentation convert to base 10
fprintf('The decimal representation of [0 1 0 0 0 0 0 1 0 0 0 1 1 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0] is %.4f\n',SngBinToNum(bin ));
fprintf('The decimal representation of [1 1 0 0 0 0 0 1 0 0 0 1 1 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0] is %.4f\n',SngBinToNum(bin2));
fprintf('The decimal representation of [0 1 0 0 0 0 0 0 0 0 0 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1] is %.4f\n',SngBinToNum(bin3));

%base 10 convert to signed binary presentation
NumToSngBin(9.9);
NumToSngBin(-9.9);
NumToSngBin(2.3);
