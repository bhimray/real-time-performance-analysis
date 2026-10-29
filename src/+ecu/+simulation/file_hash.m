function hash = file_hash(path)
%FILE_HASH Stream SHA256 in 1 MiB chunks, including large raw MAT archives.
file = fopen(path,'rb');
assert(file >= 0,'Cannot read file: %s',path);
cleanup = onCleanup(@() fclose(file)); %#ok<NASGU>
digest = java.security.MessageDigest.getInstance('SHA-256');
while true
    chunk = fread(file,1024*1024,'*uint8');
    if isempty(chunk)
        break;
    end
    digest.update(typecast(chunk,'int8'));
end
hash = lower(reshape(dec2hex(typecast(digest.digest(),'uint8'),2).',1,[]));
end
