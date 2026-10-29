function write_json(path,value)
%WRITE_JSON Close metadata files even if writing fails.
text = jsonencode(value,PrettyPrint=true);
file = fopen(path,'w');
assert(file >= 0,'Cannot create metadata file: %s',path);
cleanup = onCleanup(@() fclose(file)); %#ok<NASGU>
fprintf(file,'%s\n',text);
end
