require "lfs"


function cp(source, dest)
    -- body
    for filename in lfs.dir(source) do
        if filename ~= '.' and filename ~= '..' then
            local source_path = source .. '/' .. filename
            local attr = lfs.attributes(source_path)
            --print(attr.mode, path)
            if type(attr) == "table" and attr.mode == "directory" then 
                local dest_path = dest .. "/" .. filename
                lfs.mkdir(dest_path)
                cp(source_path, dest_path)
            else
                local f = io.open(source_path, "rb")
                local content = f:read("*all")
                f:close()
                local w = io.open(dest .. "/" .. filename, "wb")
                w:write(content)
                w:close() 
            end
        end
    end
end

if #arg == 2 then
    cp(arg[1], arg[2])
else
    print("Syntax:")
    print("lua lua.go source dest")
end
