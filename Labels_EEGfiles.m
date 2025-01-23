%% WorkPaths
% Saving data
final_path = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost';
addpath('C:\Program Files\MATLAB\R2020a\eeglab2024.2');
eeglab()
%% Para extracción de etiquetas en EEGs
read_paths = {};
% PRE Reading
% read_pre_base_C = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost\Reading\PRE\Baseline\Control';
% read_pre_base_E = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost\Reading\PRE\Baseline\Experimental';
read_paths{1} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost\Reading\PRE\Activity\Control';
read_paths{2} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost\Reading\PRE\Activity\Experimental';

% POST Reading
% read_post_base_C = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost\Reading\POST\Baseline\Control';
% read_post_base_E = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost\Reading\POST\Baseline\Experimental';
read_paths{3} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost\Reading\POST\Activity\Control';
read_paths{4} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost\Reading\POST\Activity\Experimental';

math_paths = {};

% PRE Math
% math_pre_base_C = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost\Math\PRE\Baseline\Control';
% math_pre_base_E = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost\Math\PRE\Baseline\Experimental';
math_paths{1} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost\Math\PRE\Activity_B1\Control';
math_paths{2} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost\Math\PRE\Activity_B1\Experimental';
math_paths{3} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost\Math\PRE\Activity_B2\Control';
math_paths{4} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost\Math\PRE\Activity_B2\Experimental';

% POST Math
% math_post_base_C = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost\Math\POST\Baseline\Control';
% math_post_base_E = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost\Math\POST\Baseline\Experimental';
math_paths{5} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost\Math\POST\Activity_B1\Control';
math_paths{6} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost\Math\POST\Activity_B1\Experimental';
math_paths{7} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost\Math\POST\Activity_B2\Control';
math_paths{8} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\EEG_RawData_PrePost\Math\POST\Activity_B2\Experimental';

%% Para renombrar archivos EEG
read_paths = {};
% PRE Reading
read_paths{1} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\Reading\PRE\Baseline\Control';
read_paths{2} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\Reading\PRE\Baseline\Experimental';
read_paths{3} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\Reading\PRE\Activity\Control';
read_paths{4} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\Reading\PRE\Activity\Experimental';

% POST Reading
read_paths{5} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\Reading\POST\Baseline\Control';
read_paths{6} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\Reading\POST\Baseline\Experimental';
read_paths{7} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\Reading\POST\Activity\Control';
read_paths{8} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\Reading\POST\Activity\Experimental';

math_paths = {};

% PRE Math
math_paths{1} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\Math\PRE\Baseline\Control';
math_paths{2} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\Math\PRE\Baseline\Experimental';
math_paths{3} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\Math\PRE\Activity_B1\Control';
math_paths{4} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\Math\PRE\Activity_B1\Experimental';
math_paths{5} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\Math\PRE\Activity_B2\Control';
math_paths{6} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\Math\PRE\Activity_B2\Experimental';

% POST Math
math_paths{7} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\Math\POST\Baseline\Control';
math_paths{8} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\Math\POST\Baseline\Experimental';
math_paths{9} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\Math\POST\Activity_B1\Control';
math_paths{10} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\Math\POST\Activity_B1\Experimental';
math_paths{11} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\Math\POST\Activity_B2\Control';
math_paths{12} = 'C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\Math\POST\Activity_B2\Experimental';

%% Extracting Labels for Readings
lenRead = length(read_paths);
read_t = {};
subj = {};
read_tags = {};
for i = 1:lenRead
    set_files = dir([read_paths{i} '\*.set']);
    for n = 1:length({set_files.name})
            filename = set_files(n).name;
            EEG = pop_loadset([set_files(n).folder '\' set_files(n).name]);  % Loading j-th subject activity dataset
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
            EEG = pop_loadset([set_files(n).folder '\' set_files(n).name]);  % Loading j-th subject activity dataset
            math_t = {EEG.event.type}';
            subj = repmat([extractBefore(filename,'_M')],...
                length({EEG.event.type}),1);
            math_tags = vertcat(math_tags,table(math_t,subj));
    end
end
writetable(math_tags,fullfile(final_path,'Math_Tags.xlsx'));

%% Rename EEG files - Reading
lenRead = length(read_paths);
subject_data = readtable("C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\NewNames_Dataset.xlsx");
for i = 1:lenRead
    set_files = dir([read_paths{i} '\*.set']);
    for n = 1:length({set_files.name})
            filename = set_files(n).name;
            EEG = pop_loadset([set_files(n).folder '\' set_files(n).name]);  % Loading j-th subject activity dataset
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
subject_data = readtable("C:\Users\52477\Desktop\Doctorado\8vo Semestre\ResultadosFinales_EEG\Raw EEG Data and Data Note\NewNames_Dataset.xlsx");
for i = 1:lenMath
    set_files = dir([math_paths{i} '\*.set']);
    for n = 1:length({set_files.name})
            filename = set_files(n).name;
            EEG = pop_loadset([set_files(n).folder '\' set_files(n).name]);  % Loading j-th subject activity dataset
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
