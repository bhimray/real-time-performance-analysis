function digestText = file_sha256(filePath)
%FILE_SHA256 Identify raw MAT, CSV or source bytes without loading the data.

fileId = fopen(filePath, 'rb');
assert(fileId >= 0, 'Cannot open file for hashing: %s', filePath);

fileCleanup = onCleanup(@() fclose(fileId)); %#ok<NASGU>
bytes = fread(fileId, Inf, '*uint8');

digest = java.security.MessageDigest.getInstance('SHA-256');
digest.update(typecast(bytes, 'int8'));

digestText = lower(reshape( ...
    dec2hex(typecast(digest.digest(), 'uint8'), 2).', 1, []));

end
