function result = analyze_registered_users(user_emails)
    num_users = numel(user_emails);
    result = sprintf('Total registered users: %d', num_users);
    save_result_to_file(result);
end

function save_result_to_file(result)
    fileID = fopen('analysis_result.txt', 'w');
    fprintf(fileID, '%s\n', result);
    fclose(fileID);
end
