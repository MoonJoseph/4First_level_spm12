paralist.sessnum = 2;
paralist.postfix = 'zhao';
paralist.data_type = 'nii';
paralist.pipeline = 'swcar';
paralist.server_path = '/brain/iCAN_admin/home/zhaomuen/Data_AMDD_noFM';
paralist.stats_path = '/brain/iCAN_admin/home/zhaomuen/First_level/AMDD_Lu';
paralist.parent_folder = '';
fid = fopen('/brain/iCAN_admin/home/zhaomuen/SPM/spm_scripts/First_level/AMDD/firstlv_spm12/WM.txt');
SubLists = {};
Cnt_List = 1;
while ~feof(fid)
    linedata = textscan(fgetl(fid), '%s', 'Delimiter', '\t');
    SubLists(Cnt_List,:) = linedata{1}; %#ok<*SAGROW>
    Cnt_List = Cnt_List + 1;
end
fclose(fid);
paralist.subjectlist = SubLists;
paralist.exp_sesslist = {'NB'};
paralist.task_dsgn = 'taskdesign_Lu.m';
paralist.contrastmat = '/brain/iCAN_admin/home/zhaomuen/SPM/spm_scripts/First_level/AMDD/firstlv_spm12/contrast/BrainDev_WM_Cond6.mat';
paralist.preprocessed_folder = 'smoothed_spm12';
paralist.stats_folder = 'NB/stats_spm12_swcar';
paralist.include_mvmnt = 1;
paralist.include_volrepair = 0;
paralist.volpipeline = 'swavr';
paralist.volrepaired_folder = 'volrepair_spm12';
paralist.repaired_stats = 'stats_spm12_VolRepair';
paralist.template_path = '/brain/iCAN_admin/home/zhaomuen/SPM/spm_scripts/First_level/AMDD/firstlv_spm12/depend';
