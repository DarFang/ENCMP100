%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Course: ENCMP 100
% Assignment: 5
% Name: Darius Fang
% CCID: dfang1
% U of A ID: 1570975
%
% Acknowledgements: 
% Internet
%
% Description:
% This program generates a tongue twister output file.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [] = tounge_twister_1570975()
    clear;
    readstring = read_form('form.txt');%creates a string from a file
    [tag,replacement]  = read_sub_tag('sub.txt');%gets two variables
    newstring = replace_tags(readstring,tag,replacement);%modifies the created string with the two variables
    create_output('Tongue_Twister_Fang.txt',newstring);%outputs the new string into another file
end

function readstring = read_form(textfile)
    readstring = ""; %empty readstring
    file=fopen(textfile);%checks if file is valid
    if file == -1
        fprintf('File opened unsucessfully');
    else
        while feof(file) == 0%still holds lines
            readstring = readstring+string(fgets(file));%reads the while file into a string
        end
    end
    fclose(file);%close file
end

function [tag,replacement] = read_sub_tag(textfile)
    tag = ""; %empty tag
    replacement = ""; %empty replacement
    file=fopen(textfile);%opens file
    if file == -1%checks if file is valid
        fprintf('File opened unsucessfully');
    else
        [tag,replacement] = strtok(fgets(file));%splits the liine into 2 strings
        tag = lower(tag);%lowercase
        replacement = strtrim(replacement);%remove excess spaces   
    end
    fclose(file);
end

function newstring = replace_tags(readstring,tag,replacement)
    newstring(1:3,1) = "";%initiate new string with 3 empty arrays
    substring = lower(splitlines(readstring));%lower case split into 3 of original
    index = strfind(substring,tag);%where the position needs to be replaced
    readstring = splitlines(readstring);%change to 3 strings
    offset = length(tag);%gets length of tag
    for line=1:length(index)
        column = 1;%index of string columns
        indexcell = 1;%index of index cell
        while column <= length((substring{line}))%if column index does not reach the end of the string
            if  (index{line}(indexcell) == column)%if column==index value
                newstring(line,1) = newstring(line,1)+replacement;%adds on the replacment
                column = column+offset;%shifts the column for next iteration
                if length(index{line}) ~= indexcell%if index is not finished
                    indexcell = indexcell+1;%index cell goes to the next value of index
                end
            else
                newstring(line,1) = newstring(line,1)+(readstring{line}(column));%adds one charater
                column = column+1;%next iteration by one
            end
        end
    end
end

function create_output(name,newstring)
    file = fopen(name,'wt');
    for line = 1:length(newstring)%gets the size of string
        fprintf(file,'%s\n',newstring{line});%adds on the lines into the file
    end
    fclose(file);
end