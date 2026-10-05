package("lys-framework")
    set_kind("library")
    set_description("Lys Framework")
    set_license("zlib")
    set_homepage("https://github.com/Tigole/Lys-Framework.git")

    add_urls("https://github.com/Tigole/Lys-Framework.git")
    add_versions("0.0.1", "18130779e9b3599f5ed2eb1c5b3c7a94a8f2a3ac")

    add_configs("backend", {values = {"sfml", "raylib"}})

    on_load(function(package)
        local backend = package:config("backend")
        print("backend: " .. backend)

        if backend == "sfml" then
            package:add("deps", "sfml")
            package:add("defines", "LYS_CONFIG_BACKEND_SFML", {public = true})
        elseif backend == "raylib" then
            package:add("deps", "raylib")
            package:add("defines", "LYS_CONFIG_BACKEND_RAYLIB", {public = true})
        end

        package:add("deps", "tinyxml-boosted")
        package:add("defines", "LYS_BUILD_STATIC")
        print(package:get("defines"))

    end)

    on_install(function (package)
        local configs = {}

        configs.backend = package:config("backend")

        local config_file_path = "lys/lys-config.hpp"
        if (configs.backend == "sfml") then
            local content = io.readfile(config_file_path)
            content = content:gsub("/// @xmake-config - BACKEND", "#define LYS_CONFIG_BACKEND_SFML")
            io.writefile(config_file_path, content)
        end
        import("package.tools.xmake").install(package, configs)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)