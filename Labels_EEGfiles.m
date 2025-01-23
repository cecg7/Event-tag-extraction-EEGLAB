%% WorkPaths
% final_path = 'Your saving path'; Uncomment this line and include your saving path
addpath('C:\Program Files\MATLAB\R2020a\eeglab2024.2');
eeglab()

read_paths = {};        % declaring a variable to save all paths where reading experiment EEG signals were stored
                        % Customize this by your number of paths (I used 4) 
% PRE Reading
read_paths{1} = 'MyPath1';
read_paths{2} = 'MyPath2';
% POST Reading
read_paths{3} = 'MyPath3';
read_paths{4} = 'MyPath4';

math_paths = {};        % declaring a variable to save all paths where reading experiment EEG signals were stored
                        % Customize this by your number of paths (I used 8) 
% PRE Math
math_paths{1} = 'MyPath1';;
math_paths{2} = 'MyPath2';
math_paths{3} = 'MyPath3';
math_paths{4} = 'MyPath4';
% POST Math
math_paths{5} = 'MyPath5';
math_paths{6} = 'MyPath6';
math_paths{7} = 'MyPath7';
math_paths{8} = 'MyPath8';

%% Extracting Labels for Readings
lenRead = length(read_paths);
read_t = {};
subj = {};
read_tags = {};
for i = 1:lenRead
    set_files = dir([read_paths{i} '\*.set']);
    for n = 1:length({set_files.name})
            filename = set_files(n).name;
            EEG = pop_loadset([set_files(n).folder '\' set_files(n).name]);  % Loading n-th subject dataset
            read_t = {EEG.event.type}';
            subj = repmat([extractBefore(filename,'_R')],...
                length({EEG.event.type}),1);
            read_tags = vertcat(read_tags,table(read_t,subj));
    end
end
writetable(read_tags,fullfile(final_path,'Reading_Tags.xlsx'));

%% Extracting Labels for Math
lenMath = length(math_paths);
math_t = {};
subj = {};
math_tags = {};
for i = 1:lenMath
    set_files = dir([math_paths{i} '\*.set']);
    for n = 1:length({set_files.name})
            filename = set_files(n).name;
            EEG = pop_loadset([set_files(n).folder '\' set_files(n).name]);  % Loading n-th subject dataset
            math_t = {EEG.event.type}';
            subj = repmat([extractBefore(filename,'_M')],...
                length({EEG.event.type}),1);
            math_tags = vertcat(math_tags,table(math_t,subj));
    end
end
writetable(math_tags,fullfile(final_path,'Math_Tags.xlsx'));


%% RENAME EEG FILES 
% Working Paths
read_paths = {};             % Customize this section as you please
% PRE Reading
read_paths{1} = 'MyPath1';
read_paths{2} = 'MyPath2';
read_paths{3} = 'MyPath3';
read_paths{4} = 'MyPath4';

% POST Reading
read_paths{5} = 'MyPath5';
read_paths{6} = 'MyPath6';
read_paths{7} = 'MyPath7';
read_paths{8} = 'MyPath8';

math_paths = {};            % Customize this section as you please
% PRE Math
math_paths{1} = 'MyPath1';
math_paths{2} = 'MyPath2';
math_paths{3} = 'MyPath3';
math_paths{4} = 'MyPath4';
math_paths{5} = 'MyPath5';
math_paths{6} = 'MyPath6';

% POST Math
math_paths{7} = 'MyPath7';
math_paths{8} = 'MyPath8';
math_paths{9} = 'MyPath9';
math_paths{10} = 'MyPath10';
math_paths{11} = 'MyPath11';
math_paths{12} = 'MyPath12';

%% Rename EEG files - Reading
lenRead = length(read_paths);
subject_data = readtable("My table path"); % A relationship with older and newer names must be uploaded
for i = 1:lenRead
    set_files = dir([read_paths{i} '\*.set']);
    for n = 1:length({set_files.name})
            filename = set_files(n).name;
            EEG = pop_loadset([set_files(n).folder '\' set_files(n).name]);  % Loading n-th subject activity dataset
            new_name = extractBefore(filename,'_');
            new_name = table({new_name});
            new_name.Properties.VariableNames("Var1") = "SUBJECT";
            idx_name = ismember(subject_data(:,4),new_name);
            idx_name = find(idx_name == 1);
            new_name = subject_data(idx_name,5);
            new_name = table2array(new_name);
            EEG = pop_saveset(EEG, 'filename', char(new_name),...  
                'filepath', char(read_paths{i})); 
    end
end

%% Rename EEG files - Math
lenMath = length(math_paths);
subject_data = readtable("My table path"); % A relationship with older and newer names must be uploaded
for i = 1:lenMath
    set_files = dir([math_paths{i} '\*.set']);
    for n = 1:length({set_files.name})
            filename = set_files(n).name;
            EEG = pop_loadset([set_files(n).folder '\' set_files(n).name]);  % Loading n-th subject activity dataset
            new_name = extractBefore(filename,'_');
            new_name = table({new_name});
            new_name.Properties.VariableNames("Var1") = "SUBJECT";
            idx_name = ismember(subject_data(:,4),new_name);
            idx_name = find(idx_name == 1);
            new_name = subject_data(idx_name,5);
            new_name = table2array(new_name);
            EEG = pop_saveset(EEG, 'filename', char(new_name),...  
                'filepath', char(math_paths{i})); 
    end
end
