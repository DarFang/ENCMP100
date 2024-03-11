clc;clear
chr = 'Encmp100';
str = "Encmp100";

A = chr(1); %get one character from string
A1 = chr(1,:); %get entire string

B = str(1); %get entire string
B1 = str{1}(1); %get one character from string

%--convert between the two
C = string(chr);
D = char(str);

%combining strings
newchr = [chr ' is awesome'];
newstr = str + " is awesome";

%extra stuff
%cell
newcell = {'Encmp100', 1};
E = newcell{1};
E1 = newcell{1}(1);
%struct
newstruct(1).text = 'Encmp100';
newstruct(2).text = 'is';
newstruct(3).text = 'awesome';
newstruct(1).id = 1;
F = newstruct(1).text;
F1 = newstruct(1).text(1);





