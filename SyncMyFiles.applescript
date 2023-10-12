-- Get the home directory dynamically
set homeDirectory to do shell script "echo $HOME"

-- Sync folders
on syncFolders()
    -- Define source folder on the internal drive
    set sourceFolder to homeDirectory & "/Desktop/mix-files"
    -- Define destination folder on the external drive
    set destinationFolder to "/Volumes/passport/mix-files"

    -- Single rsync command with flags:
    -- '-a' for 'archive mode', preserving attributes
    -- '--ignore-existing' to skip existing files
    -- '--delete' to remove files in destination not present in source
    set rsyncCommand to "rsync -av --ignore-existing --delete " & quoted form of sourceFolder & "/ " & quoted form of destinationFolder & "/"
    try
        do shell script rsyncCommand
    on error errMsg
        display dialog "An error occurred: " & errMsg
    end try
end syncFolders

-- Execute the syncFolders function
syncFolders()
