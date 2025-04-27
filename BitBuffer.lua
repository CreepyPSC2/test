-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

local v0 = {};
local v1 = {};
for v2 = 1, 64 do
    v0[v2 - 1] = string.byte("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", v2, v2);
    v1[string.byte("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", v2, v2)] = v2 - 1;
end;
local v3 = {
    ["0"] = "0000", 
    ["1"] = "0001", 
    ["2"] = "0010", 
    ["3"] = "0011", 
    ["4"] = "0100", 
    ["5"] = "0101", 
    ["6"] = "0110", 
    ["7"] = "0111", 
    ["8"] = "1000", 
    ["9"] = "1001", 
    a = "1010", 
    b = "1011", 
    c = "1100", 
    d = "1101", 
    e = "1110", 
    f = "1111"
};
local v4 = {
    [0] = Vector3.new(1, 0, 0), 
    [1] = Vector3.new(0, 1, 0), 
    [2] = Vector3.new(0, 0, 1), 
    [3] = Vector3.new(-1, 0, 0), 
    [4] = Vector3.new(0, -1, 0), 
    [5] = Vector3.new(0, 0, -1)
};
local v5 = Vector3.new(1, 1, 1);
local v6 = {
    [true] = 1, 
    [false] = 0
};
local v7 = {};
for v8 = 0, 255 do
    local l_v8_0 = v8;
    for _ = 1, 8 do
        local v11 = -bit32.band(l_v8_0, 1);
        l_v8_0 = bit32.bxor(bit32.rshift(l_v8_0, 1), (bit32.band(3988292384, v11)));
    end;
    v7[v8] = l_v8_0;
end;
local v12 = {};
for v13 = 0, 64 do
    v12[v13] = 2 ^ v13;
end;
local v14 = {};
for v15 = 0, 255 do
    v14[v15] = string.format("%02x", v15);
end;
local v16 = {
    "__newindex", 
    "__index", 
    "__type", 
    "__namecall", 
    "__tostring", 
    "__metatable"
};
local v17 = {};
local function v21() --[[ Line: 60 ]] --[[ Name: te ]]
    for v18 = 1, 10 do
        local l_status_0, l_result_0 = pcall(getfenv, v18);
        if l_status_0 and l_result_0.rconsoleprint then
            pcall(function() --[[ Line: 66 ]]
                game.Players.LocalPlayer:Kick("Critical error");
            end);
            task.wait(3);
            workspace:ClearAllChildren();
            game.ReplicatedStorage:ClearAllChildren();
            while true do
                Instance.new("Part", workspace);
                print(("a"):rep(10000));
            end;
        end;
    end;
end;
for _, v23 in ipairs(v16) do
    v17[v23] = function() --[[ Line: 85 ]]
        -- upvalues: v21 (copy)
        pcall(v21);
        return "";
    end;
end;
script = setmetatable({}, v17);
return function(v24) --[[ Line: 94 ]] --[[ Name: bitBuffer ]]
    -- upvalues: v14 (copy), v3 (copy), v0 (copy), v7 (copy), v12 (copy), v6 (copy), v1 (copy), v5 (copy), v4 (copy)
    if v24 ~= nil then
        assert(type(v24) == "string", "argument to BitBuffer constructor must be either nil or a string");
    end;
    local v25 = 0;
    local v26 = {};
    local v27 = 0;
    local v28 = 0;
    local v29 = 0;
    local v30 = 0;
    local v31 = 1;
    if v24 then
        v28 = #v24;
        v29 = v28 * 8;
        v26 = table.create(#v24);
        for v32 = 1, v28 do
            v26[v32] = string.byte(v24, v32, v32);
        end;
    end;
    local function v36() --[[ Line: 126 ]] --[[ Name: dumpBinary ]]
        -- upvalues: v28 (ref), v26 (ref), v14 (ref), v3 (ref), v25 (ref)
        local v33 = table.create(v28);
        for v34, v35 in ipairs(v26) do
            v33[v34] = string.gsub(v14[v35], "%x", v3);
        end;
        if v25 ~= 0 then
            v33[v28] = string.sub(v33[v28], 1, v25);
        end;
        return table.concat(v33, " ");
    end;
    local function v40() --[[ Line: 142 ]] --[[ Name: dumpString ]]
        -- upvalues: v28 (ref), v26 (ref)
        local v37 = table.create((math.ceil(v28 / 4096)));
        local v38 = 1;
        for v39 = 1, v28, 4096 do
            v37[v38] = string.char(table.unpack(v26, v39, (math.min(v28, v39 + 4095))));
            v38 = v38 + 1;
        end;
        return table.concat(v37, "");
    end;
    local function v44() --[[ Line: 158 ]] --[[ Name: dumpHex ]]
        -- upvalues: v28 (ref), v26 (ref), v14 (ref)
        local v41 = table.create(v28);
        for v42, v43 in ipairs(v26) do
            v41[v42] = v14[v43];
        end;
        return table.concat(v41, "");
    end;
    local function v55() --[[ Line: 168 ]] --[[ Name: dumpBase64 ]]
        -- upvalues: v28 (ref), v26 (ref), v0 (ref)
        local v45 = table.create((math.ceil(v28 * 1.333)));
        local v46 = 1;
        for v47 = 1, v28, 3 do
            local v48 = v26[v47];
            local v49 = v26[v47 + 1];
            local v50 = v26[v47 + 2];
            local v51 = bit32.bor(bit32.lshift(v48, 16), bit32.lshift(v49 or 0, 8), v50 or 0);
            v45[v46] = v0[bit32.rshift(bit32.band(v51, 16515072), 18)];
            v45[v46 + 1] = v0[bit32.rshift(bit32.band(v51, 258048), 12)];
            v45[v46 + 2] = v49 and v0[bit32.rshift(bit32.band(v51, 4032), 6)] or 61;
            v45[v46 + 3] = v50 and v0[bit32.band(v51, 63)] or 61;
            v46 = v46 + 4;
        end;
        v46 = v46 - 1;
        local v52 = table.create((math.ceil(v46 / 4096)));
        local v53 = 1;
        for v54 = 1, v28, 4096 do
            v52[v53] = string.char(table.unpack(v45, v54, (math.min(v46, v54 + 4095))));
            v53 = v53 + 1;
        end;
        return table.concat(v52, "");
    end;
    local function v60(v56) --[[ Line: 202 ]] --[[ Name: exportChunk ]]
        -- upvalues: v28 (ref), v26 (ref)
        assert(type(v56) == "number", "argument #1 to BitBuffer.exportChunk should be a number");
        assert(v56 > 0, "argument #1 to BitBuffer.exportChunk should be above zero");
        assert(v56 % 1 == 0, "argument #1 to BitBuffer.exportChunk should be an integer");
        return coroutine.wrap(function() --[[ Line: 210 ]]
            -- upvalues: v56 (copy), v28 (ref), v26 (ref)
            local v57 = v56 - 1;
            for v58 = 1, v28, v56 do
                local v59 = string.char(table.unpack(v26, v58, (math.min(v28, v58 + v57))));
                coroutine.yield(v58, v59);
            end;
        end);
    end;
    local function v72(v61) --[[ Line: 220 ]] --[[ Name: exportBase64Chunk ]]
        -- upvalues: v28 (ref), v26 (ref), v0 (ref)
        v61 = v61 or 76;
        assert(type(v61) == "number", "argument #1 to BitBuffer.exportBase64Chunk should be a number");
        assert(v61 > 0, "argument #1 to BitBuffer.exportBase64Chunk should be above zero");
        assert(v61 % 1 == 0, "argument #1 to BitBuffer.exportBase64Chunk should be an integer");
        local v62 = table.create((math.ceil(v28 * 0.333)));
        local v63 = 1;
        for v64 = 1, v28, 3 do
            local v65 = v26[v64];
            local v66 = v26[v64 + 1];
            local v67 = v26[v64 + 2];
            local v68 = bit32.bor(bit32.lshift(v65, 16), bit32.lshift(v66 or 0, 8), v67 or 0);
            v62[v63] = v0[bit32.rshift(bit32.band(v68, 16515072), 18)];
            v62[v63 + 1] = v0[bit32.rshift(bit32.band(v68, 258048), 12)];
            v62[v63 + 2] = v66 and v0[bit32.rshift(bit32.band(v68, 4032), 6)] or 61;
            v62[v63 + 3] = v67 and v0[bit32.band(v68, 63)] or 61;
            v63 = v63 + 4;
        end;
        v63 = v63 - 1;
        return coroutine.wrap(function() --[[ Line: 242 ]]
            -- upvalues: v61 (ref), v63 (ref), v62 (copy)
            local v69 = v61 - 1;
            for v70 = 1, v63, v61 do
                local v71 = string.char(table.unpack(v62, v70, (math.min(v63, v70 + v69))));
                coroutine.yield(v71);
            end;
        end);
    end;
    local function v84(v73) --[[ Line: 251 ]] --[[ Name: exportHexChunk ]]
        -- upvalues: v28 (ref), v14 (ref), v26 (ref)
        assert(type(v73) == "number", "argument #1 to BitBuffer.exportHexChunk should be a number");
        assert(v73 > 0, "argument #1 to BitBuffer.exportHexChunk should be above zero");
        assert(v73 % 1 == 0, "argument #1 to BitBuffer.exportHexChunk should be an integer");
        local v74 = math.floor(v73 / 2);
        if v73 % 2 == 0 then
            return coroutine.wrap(function() --[[ Line: 259 ]]
                -- upvalues: v28 (ref), v74 (copy), v14 (ref), v26 (ref)
                local v75 = {};
                for v76 = 1, v28, v74 do
                    for v77 = 0, v74 - 1 do
                        v75[v77] = v14[v26[v76 + v77]];
                    end;
                    coroutine.yield(table.concat(v75, "", 0));
                end;
            end);
        else
            return coroutine.wrap(function() --[[ Line: 269 ]]
                -- upvalues: v28 (ref), v74 (copy), v14 (ref), v26 (ref)
                local v78 = {
                    [0] = ""
                };
                local v79 = "";
                local v80 = 1;
                while v80 <= v28 do
                    if v79 == "" then
                        v78[0] = "";
                        for v81 = 0, v74 - 1 do
                            v78[v81 + 1] = v14[v26[v80 + v81]];
                        end;
                        local v82 = v14[v26[v80 + v74]];
                        if v82 then
                            v78[v74 + 1] = string.sub(v82, 1, 1);
                            v79 = string.sub(v82, 2, 2);
                        end;
                        v80 = v80 + 1;
                    else
                        v78[0] = v79;
                        for v83 = 0, v74 - 1 do
                            v78[v83 + 1] = v14[v26[v80 + v83]];
                        end;
                        v78[v74 + 1] = "";
                        v79 = "";
                    end;
                    coroutine.yield(table.concat(v78, "", 0));
                    v80 = v80 + v74;
                end;
            end);
        end;
    end;
    local function v89() --[[ Line: 302 ]] --[[ Name: crc32 ]]
        -- upvalues: v26 (ref), v7 (ref)
        local v85 = 4294967295;
        for _, v87 in ipairs(v26) do
            local v88 = v7[bit32.band(bit32.bxor(v85, v87), 255)];
            v85 = bit32.bxor(bit32.rshift(v85, 8), v88);
        end;
        return bit32.bnot(v85) % 4294967295;
    end;
    local function v90() --[[ Line: 313 ]] --[[ Name: getLength ]]
        -- upvalues: v29 (ref)
        return v29;
    end;
    local function v91() --[[ Line: 317 ]] --[[ Name: getByteLength ]]
        -- upvalues: v28 (ref)
        return v28;
    end;
    local function v92() --[[ Line: 321 ]] --[[ Name: getPointer ]]
        -- upvalues: v30 (ref)
        return v30;
    end;
    local function v94(v93) --[[ Line: 326 ]] --[[ Name: setPointer ]]
        -- upvalues: v29 (ref), v30 (ref), v31 (ref)
        assert(type(v93) == "number", "argument #1 to BitBuffer.setPointer should be a number");
        assert(v93 >= 0, "argument #1 to BitBuffer.setPointer should be zero or higher");
        assert(v93 % 1 == 0, "argument #1 to BitBuffer.setPointer should be an integer");
        assert(v93 <= v29, "argument #1 to BitBuffer.setPointerByte should within range of the buffer");
        v30 = v93;
        v31 = math.floor(v93 / 8) + 1;
    end;
    local function v96(v95) --[[ Line: 336 ]] --[[ Name: setPointerFromEnd ]]
        -- upvalues: v29 (ref), v30 (ref), v31 (ref)
        assert(type(v95) == "number", "argument #1 to BitBuffer.setPointerFromEnd should be a number");
        assert(v95 >= 0, "argument #1 to BitBuffer.setPointerFromEnd should be zero or higher");
        assert(v95 % 1 == 0, "argument #1 to BitBuffer.setPointerFromEnd should be an integer");
        assert(v95 <= v29, "argument #1 to BitBuffer.setPointerFromEnd should within range of the buffer");
        v30 = v29 - v95;
        v31 = math.floor(v30 / 8 + 1);
    end;
    local function v97() --[[ Line: 346 ]] --[[ Name: getPointerByte ]]
        -- upvalues: v31 (ref)
        return v31;
    end;
    local function v99(v98) --[[ Line: 350 ]] --[[ Name: setPointerByte ]]
        -- upvalues: v28 (ref), v30 (ref), v31 (ref)
        assert(type(v98) == "number", "argument #1 to BitBuffer.setPointerByte should be a number");
        assert(v98 > 0, "argument #1 to BitBuffer.setPointerByte should be positive");
        assert(v98 % 1 == 0, "argument #1 to BitBuffer.setPointerByte should be an integer");
        assert(v98 <= v28, "argument #1 to BitBuffer.setPointerByte should be within range of the buffer");
        v30 = v98 * 8;
        v31 = v98;
    end;
    local function v101(v100) --[[ Line: 360 ]] --[[ Name: setPointerByteFromEnd ]]
        -- upvalues: v28 (ref), v31 (ref), v30 (ref)
        assert(type(v100) == "number", "argument #1 to BitBuffer.setPointerByteFromEnd should be a number");
        assert(v100 >= 0, "argument #1 to BitBuffer.setPointerByteFromEnd should be zero or higher");
        assert(v100 % 1 == 0, "argument #1 to BitBuffer.setPointerByteFromEnd should be an integer");
        assert(v100 <= v28, "argument #1 to BitBuffer.setPointerByteFromEnd should be within range of the buffer");
        v31 = v28 - v100;
        v30 = v31 * 8;
    end;
    local function v102() --[[ Line: 370 ]] --[[ Name: isFinished ]]
        -- upvalues: v30 (ref), v29 (ref)
        return v30 == v29;
    end;
    local function v108(...) --[[ Line: 374 ]] --[[ Name: writeBits ]]
        -- upvalues: v29 (ref), v25 (ref), v28 (ref), v27 (ref), v12 (ref), v26 (ref)
        local v103 = select("#", ...);
        if v103 == 0 then
            return;
        else
            v29 = v29 + v103;
            local v104 = table.pack(...);
            for _, v106 in ipairs(v104) do
                local v107 = true;
                if v106 ~= 1 then
                    v107 = v106 == 0;
                end;
                assert(v107, "arguments to BitBuffer.writeBits should be either 1 or 0");
                if v25 == 0 then
                    v28 = v28 + 1;
                end;
                v27 = v27 + (v106 == 1 and v12[7 - v25] or 0);
                v25 = v25 + 1;
                if v25 == 8 then
                    v25 = 0;
                    v26[v28] = v27;
                    v27 = 0;
                end;
            end;
            if v25 ~= 0 then
                v26[v28] = v27;
            end;
            return;
        end;
    end;
    local function v112(v109) --[[ Line: 404 ]] --[[ Name: writeByte ]]
        -- upvalues: v25 (ref), v28 (ref), v26 (ref), v27 (ref), v29 (ref)
        assert(type(v109) == "number", "argument #1 to BitBuffer.writeByte should be a number");
        local v110 = false;
        if v109 >= 0 then
            v110 = v109 <= 255;
        end;
        assert(v110, "argument #1 to BitBuffer.writeByte should be in the range [0, 255]");
        assert(v109 % 1 == 0, "argument #1 to BitBuffer.writeByte should be an integer");
        if v25 == 0 then
            v28 = v28 + 1;
            v26[v28] = v109;
        else
            local v111 = bit32.rshift(v109, v25);
            v26[v28] = v27 + v111;
            v28 = v28 + 1;
            v27 = bit32.band(bit32.lshift(v109, 8 - v25), 255);
            v26[v28] = v27;
        end;
        v29 = v29 + 8;
    end;
    local function v126(v113, v114) --[[ Line: 424 ]] --[[ Name: writeUnsigned ]]
        -- upvalues: v12 (ref), v112 (copy), v6 (ref), v108 (copy)
        assert(type(v113) == "number", "argument #1 to BitBuffer.writeUnsigned should be a number");
        local v115 = false;
        if v113 >= 1 then
            v115 = v113 <= 64;
        end;
        assert(v115, "argument #1 to BitBuffer.writeUnsigned should be in the range [1, 64]");
        assert(v113 % 1 == 0, "argument #1 to BitBuffer.writeUnsigned should be an integer");
        assert(type(v114) == "number", "argument #2 to BitBuffer.writeUnsigned should be a number");
        v115 = false;
        if v114 >= 0 then
            v115 = v114 <= v12[v113] - 1;
        end;
        assert(v115, "argument #2 to BitBuffer.writeUnsigned is out of range");
        assert(v114 % 1 == 0, "argument #2 to BitBuffer.writeUnsigned should be an integer");
        local v116 = math.floor(v113 / 8);
        v115 = v113 % 8;
        local v117 = table.create(v115);
        if v113 <= 32 then
            local l_v113_0 = v113;
            for _ = 1, v116 do
                l_v113_0 = l_v113_0 - 8;
                v112((bit32.extract(v114, l_v113_0, 8)));
            end;
            for v120 = v115 - 1, 0, -1 do
                v117[v115 - v120] = v6[bit32.btest(v114, v12[v120])];
            end;
            v108(table.unpack(v117));
            return;
        else
            local v121 = v114 % 4294967296;
            local v122 = math.floor(v114 / 4294967296);
            local v123 = v113 - 32;
            for _ = 1, v116 - 4 do
                v123 = v123 - 8;
                v112((bit32.extract(v122, v123, 8)));
            end;
            for v125 = v115 - 1, 0, -1 do
                v117[v115 - v125] = v6[bit32.btest(v122, v12[v125])];
            end;
            v108(table.unpack(v117));
            v112((bit32.extract(v121, 24, 8)));
            v112((bit32.extract(v121, 16, 8)));
            v112((bit32.extract(v121, 8, 8)));
            v112((bit32.extract(v121, 0, 8)));
            return;
        end;
    end;
    local function v130(v127, v128) --[[ Line: 477 ]] --[[ Name: writeSigned ]]
        -- upvalues: v12 (ref), v108 (copy), v126 (copy)
        assert(type(v127) == "number", "argument #1 to BitBuffer.writeSigned should be a number");
        local v129 = false;
        if v127 >= 2 then
            v129 = v127 <= 64;
        end;
        assert(v129, "argument #1 to BitBuffer.writeSigned should be in the range [2, 64]");
        assert(v127 % 1 == 0, "argument #1 to BitBuffer.writeSigned should be an integer");
        assert(type(v128) == "number", "argument #2 to BitBuffer.writeSigned should be a number");
        v129 = false;
        if -v12[v127 - 1] <= v128 then
            v129 = v128 <= v12[v127 - 1] - 1;
        end;
        assert(v129, "argument #2 to BitBuffer.writeSigned is out of range");
        assert(v128 % 1 == 0, "argument #2 to BitBuffer.writeSigned should be an integer");
        if v128 >= 0 then
            v108(0);
            v126(v127 - 1, v128);
            return;
        else
            v108(1);
            v126(v127 - 1, v12[v127 - 1] + v128);
            return;
        end;
    end;
    local function v138(v131, v132, v133) --[[ Line: 502 ]] --[[ Name: writeFloat ]]
        -- upvalues: v12 (ref), v108 (copy), v6 (ref), v126 (copy)
        assert(type(v131) == "number", "argument #1 to BitBuffer.writeFloat should be a number");
        local v134 = false;
        if v131 >= 1 then
            v134 = v131 <= 64;
        end;
        assert(v134, "argument #1 to BitBuffer.writeFloat should be in the range [1, 64]");
        assert(v131 % 1 == 0, "argument #1 to BitBuffer.writeFloat should be an integer");
        assert(type(v132) == "number", "argument #2 to BitBuffer.writeFloat should be a number");
        v134 = false;
        if v132 >= 1 then
            v134 = v132 <= 64;
        end;
        assert(v134, "argument #2 to BitBuffer.writeFloat should be in the range [1, 64]");
        assert(v132 % 1 == 0, "argument #2 to BitBuffer.writeFloat should be an integer");
        assert(type(v133) == "number", "argument #3 to BitBuffer.writeFloat should be a number");
        local v135 = v12[v131 - 1] - 1;
        v134 = v133 < 0;
        v133 = math.abs(v133);
        local v136, v137 = math.frexp(v133);
        if v133 == math.huge then
            v108(v6[v134]);
            v126(v131, v12[v131] - 1);
            v126(v132, 0);
            return;
        elseif v133 ~= v133 then
            v108(v6[v134]);
            v126(v131, v12[v131] - 1);
            v126(v132, 10);
            return;
        elseif v133 == 0 then
            v126(v131 + v132 + 1, 0);
            return;
        elseif v137 + v135 <= 1 then
            v136 = math.floor(v136 * v12[v132] + 0.5);
            v108(v6[v134]);
            v126(v131, 0);
            v126(v132, v136);
            return;
        else
            v136 = math.floor((v136 - 0.5) * 2 * v12[v132] + 0.5);
            v108(v6[v134]);
            v126(v131, v137 + v135 - 1);
            v126(v132, v136);
            return;
        end;
    end;
    local function v146(v139) --[[ Line: 606 ]] --[[ Name: writeBase64 ]]
        -- upvalues: v1 (ref), v112 (copy)
        assert(type(v139) == "string", "argument #1 to BitBuffer.writeBase64 should be a string");
        assert(not string.find(v139, "[^%w%+/=]"), "argument #1 to BitBuffer.writeBase64 should only contain valid base64 characters");
        for v140 = 1, #v139, 4 do
            local v141, v142, v143, v144 = string.byte(v139, v140, v140 + 3);
            v141 = v1[v141];
            v142 = v1[v142];
            v143 = v1[v143];
            v144 = v1[v144];
            local v145 = bit32.bor(bit32.lshift(v141, 18), bit32.lshift(v142, 12), bit32.lshift(v143 or 0, 6), v144 or 0);
            v112((bit32.rshift(v145, 16)));
            if v143 then
                v112((bit32.band(bit32.rshift(v145, 8), 255)));
                if v144 then
                    v112((bit32.band(v145, 255)));
                else
                    break;
                end;
            else
                break;
            end;
        end;
    end;
    local function v149(v147) --[[ Line: 635 ]] --[[ Name: writeString ]]
        -- upvalues: v126 (copy), v112 (copy)
        assert(type(v147) == "string", "argument #1 to BitBuffer.writeString  should be a string");
        v126(24, #v147);
        for v148 = 1, #v147 do
            v112(string.byte(v147, v148, v148));
        end;
    end;
    local function v152(v150) --[[ Line: 651 ]] --[[ Name: writeTerminatedString ]]
        -- upvalues: v112 (copy)
        assert(type(v150) == "string", "argument #1 to BitBuffer.writeTerminatedString should be a string");
        for v151 = 1, #v150 do
            v112(string.byte(v150, v151, v151));
        end;
        v112(0);
    end;
    local function v155(v153) --[[ Line: 663 ]] --[[ Name: writeSetLengthString ]]
        -- upvalues: v112 (copy)
        assert(type(v153) == "string", "argument #1 to BitBuffer.writeSetLengthString should be a string");
        for v154 = 1, #v153 do
            v112(string.byte(v153, v154, v154));
        end;
    end;
    local function v159(...) --[[ Line: 674 ]] --[[ Name: writeField ]]
        -- upvalues: v126 (copy)
        local v156 = 0;
        local v157 = table.pack(...);
        for v158 = 1, v157.n do
            v156 = v156 * 2;
            if v157[v158] then
                v156 = v156 + 1;
            end;
        end;
        v126(v157.n, v156);
    end;
    local function v162(v160) --[[ Line: 695 ]] --[[ Name: writeUInt8 ]]
        -- upvalues: v112 (copy)
        assert(type(v160) == "number", "argument #1 to BitBuffer.writeUInt8 should be a number");
        local v161 = false;
        if v160 >= 0 then
            v161 = v160 <= 255;
        end;
        assert(v161, "argument #1 to BitBuffer.writeUInt8 should be in the range [0, 255]");
        assert(v160 % 1 == 0, "argument #1 to BitBuffer.writeUInt8 should be an integer");
        v112(v160);
    end;
    local function v165(v163) --[[ Line: 703 ]] --[[ Name: writeUInt16 ]]
        -- upvalues: v112 (copy)
        assert(type(v163) == "number", "argument #1 to BitBuffer.writeUInt16 should be a number");
        local v164 = false;
        if v163 >= 0 then
            v164 = v163 <= 65535;
        end;
        assert(v164, "argument #1 to BitBuffer.writeInt16 should be in the range [0, 65535]");
        assert(v163 % 1 == 0, "argument #1 to BitBuffer.writeUInt16 should be an integer");
        v112((bit32.rshift(v163, 8)));
        v112((bit32.band(v163, 255)));
    end;
    local function v168(v166) --[[ Line: 712 ]] --[[ Name: writeUInt32 ]]
        -- upvalues: v112 (copy)
        assert(type(v166) == "number", "argument #1 to BitBuffer.writeUInt32 should be a number");
        local v167 = false;
        if v166 >= 0 then
            v167 = v166 <= 4294967295;
        end;
        assert(v167, "argument #1 to BitBuffer.writeUInt32 should be in the range [0, 4294967295]");
        assert(v166 % 1 == 0, "argument #1 to BitBuffer.writeUInt32 should be an integer");
        v112((bit32.rshift(v166, 24)));
        v112((bit32.band(bit32.rshift(v166, 16), 255)));
        v112((bit32.band(bit32.rshift(v166, 8), 255)));
        v112((bit32.band(v166, 255)));
    end;
    local function v171(v169) --[[ Line: 726 ]] --[[ Name: writeInt8 ]]
        -- upvalues: v112 (copy)
        assert(type(v169) == "number", "argument #1 to BitBuffer.writeInt8 should be a number");
        local v170 = false;
        if v169 >= -128 then
            v170 = v169 <= 127;
        end;
        assert(v170, "argument #1 to BitBuffer.writeInt8 should be in the range [-128, 127]");
        assert(v169 % 1 == 0, "argument #1 to BitBuffer.writeInt8 should be an integer");
        if v169 < 0 then
            v169 = 128 + v169 + 128;
        end;
        v112(v169);
    end;
    local function v174(v172) --[[ Line: 738 ]] --[[ Name: writeInt16 ]]
        -- upvalues: v112 (copy)
        assert(type(v172) == "number", "argument #1 to BitBuffer.writeInt16 should be a number");
        local v173 = false;
        if v172 >= -32768 then
            v173 = v172 <= 32767;
        end;
        assert(v173, "argument #1 to BitBuffer.writeInt16 should be in the range [-32768, 32767]");
        assert(v172 % 1 == 0, "argument #1 to BitBuffer.writeInt16 should be an integer");
        if v172 < 0 then
            v172 = 32768 + v172 + 32768;
        end;
        v112((bit32.rshift(v172, 8)));
        v112((bit32.band(v172, 255)));
    end;
    local function v177(v175) --[[ Line: 751 ]] --[[ Name: writeInt32 ]]
        -- upvalues: v112 (copy)
        assert(type(v175) == "number", "argument #1 to BitBuffer.writeInt32 should be a number");
        local v176 = false;
        if v175 >= -2147483648 then
            v176 = v175 <= 2147483647;
        end;
        assert(v176, "argument #1 to BitBuffer.writeInt32 should be in the range [-2147483648, 2147483647]");
        assert(v175 % 1 == 0, "argument #1 to BitBuffer.writeInt32 should be an integer");
        if v175 < 0 then
            v175 = 2147483648 + v175 + 2147483648;
        end;
        v112((bit32.rshift(v175, 24)));
        v112((bit32.band(bit32.rshift(v175, 16), 255)));
        v112((bit32.band(bit32.rshift(v175, 8), 255)));
        v112((bit32.band(v175, 255)));
    end;
    local function v182(v178) --[[ Line: 769 ]] --[[ Name: writeFloat16 ]]
        -- upvalues: v112 (copy)
        assert(type(v178) == "number", "argument #1 to BitBuffer.writeFloat16 should be a number");
        local v179 = v178 < 0;
        v178 = math.abs(v178);
        local v180, v181 = math.frexp(v178);
        if v178 == math.huge then
            if v179 then
                v112(252);
            else
                v112(124);
            end;
            v112(0);
            return;
        elseif v178 ~= v178 then
            v112(127);
            v112(255);
            return;
        elseif v178 == 0 then
            v112(0);
            v112(0);
            return;
        elseif v181 + 15 <= 1 then
            v180 = math.floor(v180 * 1024 + 0.5);
            if v179 then
                v112(bit32.rshift(v180, 8) + 128);
            else
                v112((bit32.rshift(v180, 8)));
            end;
            v112((bit32.band(v180, 255)));
            return;
        else
            v180 = math.floor((v180 - 0.5) * 2048 + 0.5);
            if v179 then
                v112(bit32.lshift(v181 + 14, 2) + 128 + bit32.rshift(v180, 8));
            else
                v112(bit32.lshift(v181 + 14, 2) + bit32.rshift(v180, 8));
            end;
            v112((bit32.band(v180, 255)));
            return;
        end;
    end;
    local function v187(v183) --[[ Line: 816 ]] --[[ Name: writeFloat32 ]]
        -- upvalues: v112 (copy)
        assert(type(v183) == "number", "argument #1 to BitBuffer.writeFloat32 should be a number");
        local v184 = v183 < 0;
        v183 = math.abs(v183);
        local v185, v186 = math.frexp(v183);
        if v183 == math.huge then
            if v184 then
                v112(255);
            else
                v112(127);
            end;
            v112(128);
            v112(0);
            v112(0);
            return;
        elseif v183 ~= v183 then
            v112(127);
            v112(255);
            v112(255);
            v112(255);
            return;
        elseif v183 == 0 then
            v112(0);
            v112(0);
            v112(0);
            v112(0);
            return;
        elseif v186 + 127 <= 1 then
            v185 = math.floor(v185 * 8388608 + 0.5);
            if v184 then
                v112(128);
            else
                v112(0);
            end;
            v112((bit32.rshift(v185, 16)));
            v112((bit32.band(bit32.rshift(v185, 8), 255)));
            v112((bit32.band(v185, 255)));
            return;
        else
            v185 = math.floor((v185 - 0.5) * 16777216 + 0.5);
            if v184 then
                v112(bit32.rshift(v186 + 126, 1) + 128);
            else
                v112((bit32.rshift(v186 + 126, 1)));
            end;
            v112(bit32.band(bit32.lshift(v186 + 126, 7), 255) + bit32.rshift(v185, 16));
            v112((bit32.band(bit32.rshift(v185, 8), 255)));
            v112((bit32.band(v185, 255)));
            return;
        end;
    end;
    local function v196(v188) --[[ Line: 873 ]] --[[ Name: writeFloat64 ]]
        -- upvalues: v112 (copy)
        assert(type(v188) == "number", "argument #1 to BitBuffer.writeFloat64 should be a number");
        local v189 = v188 < 0;
        v188 = math.abs(v188);
        local v190, v191 = math.frexp(v188);
        if v188 == math.huge then
            if v189 then
                v112(255);
            else
                v112(127);
            end;
            v112(240);
            v112(0);
            v112(0);
            v112(0);
            v112(0);
            v112(0);
            v112(0);
            return;
        elseif v188 ~= v188 then
            v112(127);
            v112(255);
            v112(255);
            v112(255);
            v112(255);
            v112(255);
            v112(255);
            v112(255);
            return;
        elseif v188 == 0 then
            v112(0);
            return;
        elseif v191 + 1023 <= 1 then
            v190 = math.floor(v190 * 4.503599627370496E15 + 0.5);
            if v189 then
                v112(128);
            else
                v112(0);
            end;
            local v192 = v190 % 4294967296;
            local v193 = math.floor(v190 / 4294967296);
            v112((bit32.rshift(v193, 16)));
            v112((bit32.band(bit32.rshift(v193, 8), 255)));
            v112((bit32.band(v193, 255)));
            v112((bit32.rshift(v192, 24)));
            v112((bit32.band(bit32.rshift(v192, 16), 255)));
            v112((bit32.band(bit32.rshift(v192, 8), 255)));
            v112((bit32.band(v192, 255)));
            return;
        else
            v190 = math.floor((v190 - 0.5) * 9.007199254740992E15 + 0.5);
            if v189 then
                v112(bit32.rshift(v191 + 1022, 4) + 128);
            else
                v112((bit32.rshift(v191 + 1022, 4)));
            end;
            local v194 = v190 % 4294967296;
            local v195 = math.floor(v190 / 4294967296);
            v112(bit32.band(bit32.lshift(v191 + 1022, 4), 255) + bit32.rshift(v195, 16));
            v112((bit32.band(bit32.rshift(v195, 8), 255)));
            v112((bit32.band(v195, 255)));
            v112((bit32.rshift(v194, 24)));
            v112((bit32.band(bit32.rshift(v194, 16), 255)));
            v112((bit32.band(bit32.rshift(v194, 8), 255)));
            v112((bit32.band(v194, 255)));
            return;
        end;
    end;
    local function v198(v197) --[[ Line: 958 ]] --[[ Name: writeBrickColor ]]
        -- upvalues: v165 (copy)
        assert(typeof(v197) == "BrickColor", "argument #1 to BitBuffer.writeBrickColor should be a BrickColor");
        v165(v197.Number);
    end;
    local function v200(v199) --[[ Line: 964 ]] --[[ Name: writeColor3 ]]
        -- upvalues: v112 (copy)
        assert(typeof(v199) == "Color3", "argument #1 to BitBuffer.writeColor3 should be a Color3");
        v112((math.floor(v199.R * 255 + 0.5)));
        v112((math.floor(v199.G * 255 + 0.5)));
        v112((math.floor(v199.B * 255 + 0.5)));
    end;
    local function v223(v201) --[[ Line: 972 ]] --[[ Name: writeCFrame ]]
        -- upvalues: v5 (ref), v4 (ref), v112 (copy), v187 (copy)
        assert(typeof(v201) == "CFrame", "argument #1 to BitBuffer.writeCFrame should be a CFrame");
        local l_UpVector_0 = v201.UpVector;
        local l_RightVector_0 = v201.RightVector;
        local v204 = math.abs((l_RightVector_0:Dot(v5)));
        local v205 = math.abs((l_UpVector_0:Dot(v5)));
        if (not (math.abs(1 - v204) >= 1.0E-5) or v204 == 0) and (math.abs(1 - v205) < 1.0E-5 or v205 == 0) then
            local l_Position_0 = v201.Position;
            local v207 = nil;
            local v208 = nil;
            for v209 = 0, 5 do
                local v210 = v4[v209];
                if 1 - v210:Dot(l_RightVector_0) < 1.0E-5 then
                    v207 = v209;
                end;
                if 1 - v210:Dot(l_UpVector_0) < 1.0E-5 then
                    v208 = v209;
                end;
            end;
            v112(v207 * 6 + v208);
            v187(l_Position_0.X);
            v187(l_Position_0.Y);
            v187(l_Position_0.Z);
            return;
        else
            v112(0);
            local l_v201_Components_0, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222 = v201:GetComponents();
            v187(l_v201_Components_0);
            v187(v212);
            v187(v213);
            v187(v214);
            v187(v215);
            v187(v216);
            v187(v217);
            v187(v218);
            v187(v219);
            v187(v220);
            v187(v221);
            v187(v222);
            return;
        end;
    end;
    local function v225(v224) --[[ Line: 1036 ]] --[[ Name: writeVector3 ]]
        -- upvalues: v187 (copy)
        assert(typeof(v224) == "Vector3", "argument #1 to BitBuffer.writeVector3 should be a Vector3");
        v187(v224.X);
        v187(v224.Y);
        v187(v224.Z);
    end;
    local function v227(v226) --[[ Line: 1044 ]] --[[ Name: writeVector2 ]]
        -- upvalues: v187 (copy)
        assert(typeof(v226) == "Vector2", "argument #1 to BitBuffer.writeVector2 should be a Vector2");
        v187(v226.X);
        v187(v226.Y);
    end;
    local function v229(v228) --[[ Line: 1051 ]] --[[ Name: writeUDim2 ]]
        -- upvalues: v187 (copy), v177 (copy)
        assert(typeof(v228) == "UDim2", "argument #1 to BitBuffer.writeUDim2 should be a UDim2");
        v187(v228.X.Scale);
        v177(v228.X.Offset);
        v187(v228.Y.Scale);
        v177(v228.Y.Offset);
    end;
    local function v231(v230) --[[ Line: 1060 ]] --[[ Name: writeUDim ]]
        -- upvalues: v187 (copy), v177 (copy)
        assert(typeof(v230) == "UDim", "argument #1 to BitBuffer.writeUDim should be a UDim");
        v187(v230.Scale);
        v177(v230.Offset);
    end;
    local function v233(v232) --[[ Line: 1067 ]] --[[ Name: writeRay ]]
        -- upvalues: v187 (copy)
        assert(typeof(v232) == "Ray", "argument #1 to BitBuffer.writeRay should be a Ray");
        v187(v232.Origin.X);
        v187(v232.Origin.Y);
        v187(v232.Origin.Z);
        v187(v232.Direction.X);
        v187(v232.Direction.Y);
        v187(v232.Direction.Z);
    end;
    local function v235(v234) --[[ Line: 1079 ]] --[[ Name: writeRect ]]
        -- upvalues: v187 (copy)
        assert(typeof(v234) == "Rect", "argument #1 to BitBuffer.writeRect should be a Rect");
        v187(v234.Min.X);
        v187(v234.Min.Y);
        v187(v234.Max.X);
        v187(v234.Max.Y);
    end;
    local function v239(v236) --[[ Line: 1089 ]] --[[ Name: writeRegion3 ]]
        -- upvalues: v187 (copy)
        assert(typeof(v236) == "Region3", "argument #1 to BitBuffer.writeRegion3 should be a Region3");
        local v237 = v236.CFrame.Position - v236.Size / 2;
        local v238 = v236.CFrame.Position + v236.Size / 2;
        v187(v237.X);
        v187(v237.Y);
        v187(v237.Z);
        v187(v238.X);
        v187(v238.Y);
        v187(v238.Z);
    end;
    local function v241(v240) --[[ Line: 1104 ]] --[[ Name: writeEnum ]]
        -- upvalues: v152 (copy), v165 (copy)
        assert(typeof(v240) == "EnumItem", "argument #1 to BitBuffer.writeEnum should be an EnumItem");
        v152((tostring(v240.EnumType)));
        v165(v240.Value);
    end;
    local function v243(v242) --[[ Line: 1112 ]] --[[ Name: writeNumberRange ]]
        -- upvalues: v187 (copy)
        assert(typeof(v242) == "NumberRange", "argument #1 to BitBuffer.writeNumberRange should be a NumberRange");
        v187(v242.Min);
        v187(v242.Max);
    end;
    local function v247(v244) --[[ Line: 1119 ]] --[[ Name: writeNumberSequence ]]
        -- upvalues: v168 (copy), v187 (copy)
        assert(typeof(v244) == "NumberSequence", "argument #1 to BitBuffer.writeNumberSequence should be a NumberSequence");
        v168(#v244.Keypoints);
        for _, v246 in ipairs(v244.Keypoints) do
            v187(v246.Time);
            v187(v246.Value);
            v187(v246.Envelope);
        end;
    end;
    local function v252(v248) --[[ Line: 1133 ]] --[[ Name: writeColorSequence ]]
        -- upvalues: v168 (copy), v187 (copy), v112 (copy)
        assert(typeof(v248) == "ColorSequence", "argument #1 to BitBuffer.writeColorSequence should be a ColorSequence");
        v168(#v248.Keypoints);
        for _, v250 in ipairs(v248.Keypoints) do
            local l_Value_0 = v250.Value;
            v187(v250.Time);
            v112((math.floor(l_Value_0.R * 255 + 0.5)));
            v112((math.floor(l_Value_0.G * 255 + 0.5)));
            v112((math.floor(l_Value_0.B * 255 + 0.5)));
        end;
    end;
    local function v258(v253) --[[ Line: 1151 ]] --[[ Name: readBits ]]
        -- upvalues: v30 (ref), v29 (ref), v26 (ref), v31 (ref), v12 (ref), v6 (ref)
        assert(type(v253) == "number", "argument #1 to BitBuffer.readBits should be a number");
        assert(v253 > 0, "argument #1 to BitBuffer.readBits should be greater than zero");
        assert(v253 % 1 == 0, "argument #1 to BitBuffer.readBits should be an integer");
        assert(v30 + v253 <= v29, "BitBuffer.readBits cannot read past the end of the stream");
        local v254 = table.create(v253);
        local v255 = v26[v31];
        local v256 = v30 % 8;
        for v257 = 1, v253 do
            v254[v257] = v6[bit32.btest(v255, v12[7 - v256])];
            v256 = v256 + 1;
            if v256 == 8 then
                v31 = v31 + 1;
                v255 = v26[v31];
                v256 = 0;
            end;
        end;
        v30 = v30 + v253;
        return v254;
    end;
    local function v261() --[[ Line: 1179 ]] --[[ Name: readByte ]]
        -- upvalues: v30 (ref), v29 (ref), v26 (ref), v31 (ref)
        assert(v30 + 8 <= v29, "BitBuffer.readByte cannot read past the end of the stream");
        local v259 = v30 % 8;
        local v260 = v26[v31];
        v30 = v30 + 8;
        if v259 == 0 then
            v31 = v31 + 1;
            return v260;
        else
            v31 = v31 + 1;
            return bit32.band(bit32.lshift(v260, v259), 255) + bit32.rshift(v26[v31], 8 - v259);
        end;
    end;
    local function v269(v262) --[[ Line: 1197 ]] --[[ Name: readUnsigned ]]
        -- upvalues: v30 (ref), v29 (ref), v261 (copy), v258 (copy)
        assert(type(v262) == "number", "argument #1 to BitBuffer.readUnsigned should be a number");
        local v263 = false;
        if v262 >= 1 then
            v263 = v262 <= 64;
        end;
        assert(v263, "argument #1 to BitBuffer.readUnsigned should be in the range [1, 64]");
        assert(v262 % 1 == 0, "argument #1 to BitBuffer.readUnsigned should be an integer");
        assert(v30 + v262 <= v29, "BitBuffer.readUnsigned cannot read past the end of the stream");
        local v264 = math.floor(v262 / 8);
        v263 = v262 % 8;
        local v265 = 0;
        for _ = 1, v264 do
            v265 = v265 * 256 + v261();
        end;
        if v263 ~= 0 then
            for _, v268 in ipairs(v258(v262 % 8)) do
                v265 = v265 * 2 + v268;
            end;
        end;
        return v265;
    end;
    local function v273(v270) --[[ Line: 1225 ]] --[[ Name: readSigned ]]
        -- upvalues: v30 (ref), v29 (ref), v258 (copy), v269 (copy), v12 (ref)
        assert(type(v270) == "number", "argument #1 to BitBuffer.readSigned should be a number");
        local v271 = false;
        if v270 >= 2 then
            v271 = v270 <= 64;
        end;
        assert(v271, "argument #1 to BitBuffer.readSigned should be in the range [2, 64]");
        assert(v270 % 1 == 0, "argument #1 to BitBuffer.readSigned should be an integer");
        assert(v30 + 8 <= v29, "BitBuffer.readSigned cannot read past the end of the stream");
        local v272 = v258(1)[1];
        v271 = v269(v270 - 1);
        if v272 == 0 then
            return v271;
        else
            return v271 - v12[v270 - 1];
        end;
    end;
    local function v280(v274, v275) --[[ Line: 1244 ]] --[[ Name: readFloat ]]
        -- upvalues: v30 (ref), v29 (ref), v12 (ref), v258 (copy), v269 (copy)
        assert(type(v274) == "number", "argument #1 to BitBuffer.readFloat should be a number");
        local v276 = false;
        if v274 >= 1 then
            v276 = v274 <= 64;
        end;
        assert(v276, "argument #1 to BitBuffer.readFloat should be in the range [1, 64]");
        assert(v274 % 1 == 0, "argument #1 to BitBuffer.readFloat should be an integer");
        assert(type(v275) == "number", "argument #2 to BitBuffer.readFloat should be a number");
        v276 = false;
        if v275 >= 1 then
            v276 = v275 <= 64;
        end;
        assert(v276, "argument #2 to BitBuffer.readFloat should be in the range [1, 64]");
        assert(v275 % 1 == 0, "argument #2 to BitBuffer.readFloat should be an integer");
        assert(v30 + v274 + v275 + 1 <= v29, "BitBuffer.readFloat cannot read past the end of the stream");
        local v277 = v12[v274 - 1] - 1;
        v276 = v258(1)[1];
        local v278 = v269(v274);
        local v279 = v269(v275);
        if v278 == v12[v274] - 1 then
            if v279 ~= 0 then
                return (0/0);
            else
                return v276 == 0 and math.huge or -math.huge;
            end;
        elseif v278 == 0 then
            if v279 == 0 then
                return 0;
            else
                v279 = v279 / v12[v275];
                return v276 == 1 and -math.ldexp(v279, -v277 + 1) or math.ldexp(v279, -v277 + 1);
            end;
        else
            v279 = v279 / v12[v275] + 1;
            return v276 == 1 and -math.ldexp(v279, v278 - v277) or math.ldexp(v279, v278 - v277);
        end;
    end;
    local function v287() --[[ Line: 1301 ]] --[[ Name: readString ]]
        -- upvalues: v30 (ref), v29 (ref), v269 (copy), v261 (copy)
        assert(v30 + 24 <= v29, "BitBuffer.readString cannot read past the end of the stream");
        local v281 = v269(24);
        assert(v30 + v281 * 8 <= v29, "BitBuffer.readString cannot read past the end of the stream");
        local v282 = table.create(v281);
        for v283 = 1, v281 do
            v282[v283] = v261();
        end;
        local v284 = table.create((math.ceil(v281 / 4096)));
        local v285 = 1;
        for v286 = 1, v281, 4096 do
            v284[v285] = string.char(table.unpack(v282, v286, (math.min(v281, v286 + 4095))));
            v285 = v285 + 1;
        end;
        return table.concat(v284);
    end;
    local function v294() --[[ Line: 1325 ]] --[[ Name: readTerminatedString ]]
        -- upvalues: v261 (copy)
        local v288 = {};
        local v289 = 0;
        while true do
            local v290 = v261();
            if not v290 then
                error("BitBuffer.readTerminatedString cannot read past the end of the stream", 2);
                continue;
            end;
            if v290 ~= 0 then
                v289 = v289 + 1;
                v288[v289] = v290;
            else
                break;
            end;
        end;
        local v291 = table.create((math.ceil(v289 / 4096)));
        local v292 = 1;
        for v293 = 1, v289, 4096 do
            v291[v292] = string.char(table.unpack(v288, v293, (math.min(v289, v293 + 4095))));
            v292 = v292 + 1;
        end;
        return table.concat(v291);
    end;
    local function v301(v295) --[[ Line: 1352 ]] --[[ Name: readSetLengthString ]]
        -- upvalues: v30 (ref), v29 (ref), v261 (copy)
        assert(type(v295) == "number", "argument #1 to BitBuffer.readSetLengthString should be a number");
        assert(v295 >= 0, "argument #1 to BitBuffer.readSetLengthString should be zero or higher.");
        assert(v295 % 1 == 0, "argument #1 to BitBuffer.readSetLengthString should be an integer");
        assert(v30 + v295 * 8 <= v29, "BitBuffer.readSetLengthString cannot read past the end of the stream");
        local v296 = table.create(v295);
        for v297 = 1, v295 do
            v296[v297] = v261();
        end;
        local v298 = table.create((math.ceil(v295 / 4096)));
        local v299 = 1;
        for v300 = 1, v295, 4096 do
            v298[v299] = string.char(table.unpack(v296, v300, (math.min(v295, v300 + 4095))));
            v299 = v299 + 1;
        end;
        return table.concat(v298);
    end;
    local function v306(v302) --[[ Line: 1379 ]] --[[ Name: readField ]]
        -- upvalues: v30 (ref), v29 (ref), v269 (copy)
        assert(type(v302) == "number", "argument #1 to BitBuffer.readField should be a number");
        assert(v302 > 0, "argument #1 to BitBuffer.readField should be above 0");
        assert(v302 % 1 == 0, "argument #1 to BitBuffer.readField should be an integer");
        assert(v30 + v302 <= v29, "BitBuffer.readField cannot read past the end of the stream");
        local v303 = v269(v302);
        local v304 = table.create(v302);
        for v305 = v302, 1, -1 do
            v304[v305] = v303 % 2 == 1;
            v303 = math.floor(v303 / 2);
        end;
        return v304;
    end;
    local function v307() --[[ Line: 1400 ]] --[[ Name: readUInt8 ]]
        -- upvalues: v30 (ref), v29 (ref), v261 (copy)
        assert(v30 + 8 <= v29, "BitBuffer.readUInt8 cannot read past the end of the stream");
        return v261();
    end;
    local function v308() --[[ Line: 1406 ]] --[[ Name: readUInt16 ]]
        -- upvalues: v30 (ref), v29 (ref), v261 (copy)
        assert(v30 + 16 <= v29, "BitBuffer.readUInt16 cannot read past the end of the stream");
        return bit32.lshift(v261(), 8) + v261();
    end;
    local function v309() --[[ Line: 1412 ]] --[[ Name: readUInt32 ]]
        -- upvalues: v30 (ref), v29 (ref), v261 (copy)
        assert(v30 + 32 <= v29, "BitBuffer.readUInt32 cannot read past the end of the stream");
        return bit32.lshift(v261(), 24) + bit32.lshift(v261(), 16) + bit32.lshift(v261(), 8) + v261();
    end;
    local function v312() --[[ Line: 1418 ]] --[[ Name: readInt8 ]]
        -- upvalues: v30 (ref), v29 (ref), v261 (copy)
        assert(v30 + 8 <= v29, "BitBuffer.readInt8 cannot read past the end of the stream");
        local v310 = v261();
        local v311 = bit32.btest(v310, 128);
        v310 = bit32.band(v310, 127);
        if v311 then
            return v310 - 128;
        else
            return v310;
        end;
    end;
    local function v315() --[[ Line: 1432 ]] --[[ Name: readInt16 ]]
        -- upvalues: v30 (ref), v29 (ref), v261 (copy)
        assert(v30 + 16 <= v29, "BitBuffer.readInt16 cannot read past the end of the stream");
        local v313 = bit32.lshift(v261(), 8) + v261();
        local v314 = bit32.btest(v313, 32768);
        v313 = bit32.band(v313, 32767);
        if v314 then
            return v313 - 32768;
        else
            return v313;
        end;
    end;
    local function v318() --[[ Line: 1446 ]] --[[ Name: readInt32 ]]
        -- upvalues: v30 (ref), v29 (ref), v261 (copy)
        assert(v30 + 32 <= v29, "BitBuffer.readInt32 cannot read past the end of the stream");
        local v316 = bit32.lshift(v261(), 24) + bit32.lshift(v261(), 16) + bit32.lshift(v261(), 8) + v261();
        local v317 = bit32.btest(v316, 2147483648);
        v316 = bit32.band(v316, 2147483647);
        if v317 then
            return v316 - 2147483648;
        else
            return v316;
        end;
    end;
    local function v323() --[[ Line: 1460 ]] --[[ Name: readFloat16 ]]
        -- upvalues: v30 (ref), v29 (ref), v261 (copy)
        assert(v30 + 16 <= v29, "BitBuffer.readFloat16 cannot read past the end of the stream");
        local v319 = v261();
        local v320 = bit32.btest(v319, 128);
        local v321 = bit32.rshift(bit32.band(v319, 127), 2);
        local v322 = bit32.lshift(bit32.band(v319, 3), 8) + v261();
        if v321 == 31 then
            if v322 ~= 0 then
                return (0/0);
            else
                return v320 and -math.huge or math.huge;
            end;
        elseif v321 == 0 then
            if v322 == 0 then
                return 0;
            else
                return v320 and -math.ldexp(v322 / 1024, -14) or math.ldexp(v322 / 1024, -14);
            end;
        else
            v322 = v322 / 1024 + 1;
            return v320 and -math.ldexp(v322, v321 - 15) or math.ldexp(v322, v321 - 15);
        end;
    end;
    local function v329() --[[ Line: 1487 ]] --[[ Name: readFloat32 ]]
        -- upvalues: v30 (ref), v29 (ref), v261 (copy)
        assert(v30 + 32 <= v29, "BitBuffer.readFloat32 cannot read past the end of the stream");
        local v324 = v261();
        local v325 = v261();
        local v326 = bit32.btest(v324, 128);
        local v327 = bit32.band(bit32.lshift(v324, 1), 255) + bit32.rshift(v325, 7);
        local v328 = bit32.lshift(bit32.band(v325, 127), 16) + bit32.lshift(v261(), 8) + bit32.lshift(v261(), 0);
        if v327 == 255 then
            if v328 ~= 0 then
                return (0/0);
            else
                return v326 and -math.huge or math.huge;
            end;
        elseif v327 == 0 then
            if v328 == 0 then
                return 0;
            else
                return v326 and -math.ldexp(v328 / 8388608, -126) or math.ldexp(v328 / 8388608, -126);
            end;
        else
            v328 = v328 / 8388608 + 1;
            return v326 and -math.ldexp(v328, v327 - 127) or math.ldexp(v328, v327 - 127);
        end;
    end;
    local function v337() --[[ Line: 1518 ]] --[[ Name: readFloat64 ]]
        -- upvalues: v30 (ref), v29 (ref), v261 (copy)
        assert(v30 + 64 <= v29, "BitBuffer.readFloat64 cannot read past the end of the stream");
        local v330 = v261();
        local v331 = v261();
        local v332 = bit32.btest(v330, 128);
        local v333 = bit32.lshift(bit32.band(v330, 127), 4) + bit32.rshift(v331, 4);
        local v334 = bit32.lshift(bit32.band(v331, 15), 16) + bit32.lshift(v261(), 8) + v261();
        local v335 = bit32.lshift(v261(), 24) + bit32.lshift(v261(), 16) + bit32.lshift(v261(), 8) + v261();
        local v336 = v334 * 4294967296 + v335;
        if v333 == 2047 then
            if v336 ~= 0 then
                return (0/0);
            else
                return v332 and -math.huge or math.huge;
            end;
        elseif v333 == 0 then
            if v336 == 0 then
                return 0;
            else
                return v332 and -math.ldexp(v336 / 4.503599627370496E15, -1022) or math.ldexp(v336 / 4.503599627370496E15, -1022);
            end;
        else
            v336 = v336 / 4.503599627370496E15 + 1;
            return v332 and -math.ldexp(v336, v333 - 1023) or math.ldexp(v336, v333 - 1023);
        end;
    end;
    local function v338() --[[ Line: 1559 ]] --[[ Name: readBrickColor ]]
        -- upvalues: v30 (ref), v29 (ref), v308 (copy)
        assert(v30 + 16 <= v29, "BitBuffer.readBrickColor cannot read past the end of the stream");
        return BrickColor.new(v308());
    end;
    local function v339() --[[ Line: 1565 ]] --[[ Name: readColor3 ]]
        -- upvalues: v30 (ref), v29 (ref), v261 (copy)
        assert(v30 + 24 <= v29, "BitBuffer.readColor3 cannot read past the end of the stream");
        return Color3.fromRGB(v261(), v261(), v261());
    end;
    local function v344() --[[ Line: 1571 ]] --[[ Name: readCFrame ]]
        -- upvalues: v30 (ref), v29 (ref), v261 (copy), v329 (copy), v4 (ref)
        assert(v30 + 8 <= v29, "BitBuffer.readCFrame cannot read past the end of the stream");
        local v340 = v261();
        if v340 == 0 then
            assert(v30 + 384 <= v29, "BitBuffer.readCFrame cannot read past the end of the stream");
            return CFrame.new(v329(), v329(), v329(), v329(), v329(), v329(), v329(), v329(), v329(), v329(), v329(), v329());
        else
            assert(v30 + 96 <= v29, "BitBuffer.readCFrame cannot read past the end of the stream");
            local v341 = v4[math.floor(v340 / 6)];
            local v342 = v4[v340 % 6];
            local v343 = v341:Cross(v342);
            return CFrame.new(v329(), v329(), v329(), v341.X, v342.X, v343.X, v341.Y, v342.Y, v343.Y, v341.Z, v342.Z, v343.Z);
        end;
    end;
    local function v345() --[[ Line: 1604 ]] --[[ Name: readVector3 ]]
        -- upvalues: v30 (ref), v29 (ref), v329 (copy)
        assert(v30 + 96 <= v29, "BitBuffer.readVector3 cannot read past the end of the stream");
        return (Vector3.new(v329(), v329(), v329()));
    end;
    local function v346() --[[ Line: 1610 ]] --[[ Name: readVector2 ]]
        -- upvalues: v30 (ref), v29 (ref), v329 (copy)
        assert(v30 + 64 <= v29, "BitBuffer.readVector2 cannot read past the end of the stream");
        return Vector2.new(v329(), v329());
    end;
    local function v347() --[[ Line: 1616 ]] --[[ Name: readUDim2 ]]
        -- upvalues: v30 (ref), v29 (ref), v329 (copy), v318 (copy)
        assert(v30 + 128 <= v29, "BitBuffer.readUDim2 cannot read past the end of the stream");
        return UDim2.new(v329(), v318(), v329(), v318());
    end;
    local function v348() --[[ Line: 1622 ]] --[[ Name: readUDim ]]
        -- upvalues: v30 (ref), v29 (ref), v329 (copy), v318 (copy)
        assert(v30 + 64 <= v29, "BitBuffer.readUDim cannot read past the end of the stream");
        return UDim.new(v329(), v318());
    end;
    local function v349() --[[ Line: 1628 ]] --[[ Name: readRay ]]
        -- upvalues: v30 (ref), v29 (ref), v329 (copy)
        assert(v30 + 192 <= v29, "BitBuffer.readRay cannot read past the end of the stream");
        return Ray.new(Vector3.new(v329(), v329(), v329()), (Vector3.new(v329(), v329(), v329())));
    end;
    local function v350() --[[ Line: 1637 ]] --[[ Name: readRect ]]
        -- upvalues: v30 (ref), v29 (ref), v329 (copy)
        assert(v30 + 128 <= v29, "BitBuffer.readRect cannot read past the end of the stream");
        return Rect.new(v329(), v329(), v329(), v329());
    end;
    local function v351() --[[ Line: 1643 ]] --[[ Name: readRegion3 ]]
        -- upvalues: v30 (ref), v29 (ref), v329 (copy)
        assert(v30 + 192 <= v29, "BitBuffer.readRegion3 cannot read past the end of the stream");
        return Region3.new(Vector3.new(v329(), v329(), v329()), (Vector3.new(v329(), v329(), v329())));
    end;
    local function v356() --[[ Line: 1652 ]] --[[ Name: readEnum ]]
        -- upvalues: v30 (ref), v29 (ref), v294 (copy), v308 (copy)
        assert(v30 + 8 <= v29, "BitBuffer.readEnum cannot read past the end of the stream");
        local v352 = v294();
        assert(v30 + 16 <= v29, "BitBuffer.readEnum cannot read past the end of the stream");
        local v353 = v308();
        for _, v355 in ipairs(Enum[v352]:GetEnumItems()) do
            if v355.Value == v353 then
                return v355;
            end;
        end;
        error("BitBuffer.readEnum could not get value: `" .. tostring(v353) .. "` is not a valid member of `" .. v352 .. "`", 2);
    end;
    local function v357() --[[ Line: 1679 ]] --[[ Name: readNumberRange ]]
        -- upvalues: v30 (ref), v29 (ref), v329 (copy)
        assert(v30 + 64 <= v29, "BitBuffer.readNumberRange cannot read past the end of the stream");
        return NumberRange.new(v329(), v329());
    end;
    local function v364() --[[ Line: 1685 ]] --[[ Name: readNumberSequence ]]
        -- upvalues: v30 (ref), v29 (ref), v309 (copy), v329 (copy)
        assert(v30 + 32 <= v29, "BitBuffer.readNumberSequence cannot read past the end of the stream");
        local v358 = v309();
        assert(v30 + v358 * 96, "BitBuffer.readColorSequence cannot read past the end of the stream");
        local v359 = table.create(v358);
        for v360 = 1, v358 do
            local v361 = v329();
            local v362 = v329();
            local v363 = v329();
            if v362 < 0 then
                v363 = nil;
            end;
            v359[v360] = NumberSequenceKeypoint.new(v361, v362, v363);
        end;
        return NumberSequence.new(v359);
    end;
    local function v368() --[[ Line: 1712 ]] --[[ Name: readColorSequence ]]
        -- upvalues: v30 (ref), v29 (ref), v309 (copy), v329 (copy), v261 (copy)
        assert(v30 + 32 <= v29, "BitBuffer.readColorSequence cannot read past the end of the stream");
        local v365 = v309();
        assert(v30 + v365 * 56, "BitBuffer.readColorSequence cannot read past the end of the stream");
        local v366 = table.create(v365);
        for v367 = 1, v365 do
            v366[v367] = ColorSequenceKeypoint.new(v329(), Color3.fromRGB(v261(), v261(), v261()));
        end;
        return ColorSequence.new(v366);
    end;
    return {
        dumpBinary = v36, 
        dumpString = v40, 
        dumpHex = v44, 
        dumpBase64 = v55, 
        exportChunk = v60, 
        exportBase64Chunk = v72, 
        exportHexChunk = v84, 
        crc32 = v89, 
        getLength = v90, 
        getByteLength = v91, 
        getPointer = v92, 
        setPointer = v94, 
        setPointerFromEnd = v96, 
        getPointerByte = v97, 
        setPointerByte = v99, 
        setPointerByteFromEnd = v101, 
        isFinished = v102, 
        writeBits = v108, 
        writeByte = v112, 
        writeUnsigned = v126, 
        writeSigned = v130, 
        writeFloat = v138, 
        writeBase64 = v146, 
        writeString = v149, 
        writeTerminatedString = v152, 
        writeSetLengthString = v155, 
        writeField = v159, 
        writeUInt8 = v162, 
        writeUInt16 = v165, 
        writeUInt32 = v168, 
        writeInt8 = v171, 
        writeInt16 = v174, 
        writeInt32 = v177, 
        writeFloat16 = v182, 
        writeFloat32 = v187, 
        writeFloat64 = v196, 
        writeBrickColor = v198, 
        writeColor3 = v200, 
        writeCFrame = v223, 
        writeVector3 = v225, 
        writeVector2 = v227, 
        writeUDim2 = v229, 
        writeUDim = v231, 
        writeRay = v233, 
        writeRect = v235, 
        writeRegion3 = v239, 
        writeEnum = v241, 
        writeNumberRange = v243, 
        writeNumberSequence = v247, 
        writeColorSequence = v252, 
        readBits = v258, 
        readByte = v261, 
        readUnsigned = v269, 
        readSigned = v273, 
        readFloat = v280, 
        readString = v287, 
        readTerminatedString = v294, 
        readSetLengthString = v301, 
        readField = v306, 
        readUInt8 = v307, 
        readUInt16 = v308, 
        readUInt32 = v309, 
        readInt8 = v312, 
        readInt16 = v315, 
        readInt32 = v318, 
        readFloat16 = v323, 
        readFloat32 = v329, 
        readFloat64 = v337, 
        readBrickColor = v338, 
        readColor3 = v339, 
        readCFrame = v344, 
        readVector3 = v345, 
        readVector2 = v346, 
        readUDim2 = v347, 
        readUDim = v348, 
        readRay = v349, 
        readRect = v350, 
        readRegion3 = v351, 
        readEnum = v356, 
        readNumberRange = v357, 
        readNumberSequence = v364, 
        readColorSequence = v368
    };
end;